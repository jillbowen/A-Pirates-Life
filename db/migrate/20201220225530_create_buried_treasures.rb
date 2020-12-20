class CreateBuriedTreasures < ActiveRecord::Migration[6.0]
  def change
    create_table :buried_treasures do |t|
      t.string :pirate_id
      t.string :map_id

      t.timestamps
    end
  end
end
