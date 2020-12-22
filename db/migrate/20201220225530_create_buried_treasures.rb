class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.belongs_to :pirate, foreign_key: true
      t.belongs_to :buried_treasure, foreign_key: true

      t.timestamps
    end
  end
end
