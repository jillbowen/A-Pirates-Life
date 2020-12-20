class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.string :name
      t.integer :booby_traps
      t.integer :curses
      t.string :description_of_booty

      t.timestamps
    end
  end
end
