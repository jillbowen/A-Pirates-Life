# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_23_214220) do

  create_table "buried_treasures", force: :cascade do |t|
    t.string "name"
    t.integer "booby_traps"
    t.integer "curses"
    t.string "description_of_booty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "maps", force: :cascade do |t|
    t.integer "pirate_id"
    t.integer "buried_treasure_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.binary "map_image"
    t.index ["buried_treasure_id"], name: "index_maps_on_buried_treasure_id"
    t.index ["pirate_id"], name: "index_maps_on_pirate_id"
  end

  create_table "pirates", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "name_of_ship"
    t.integer "crew_size"
    t.integer "bottles_of_rum"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "maps", "buried_treasures"
  add_foreign_key "maps", "pirates"
end
