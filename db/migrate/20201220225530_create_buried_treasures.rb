class CreateBuriedTreasures < ActiveRecord::Migration[6.0]
  def change
    create_table :buried_treasures do |t|
      t.belongs_to :pirate, foreign_key: true
      t.belongs_to :map, foreign_key: true

      t.timestamps
    end
  end
end
