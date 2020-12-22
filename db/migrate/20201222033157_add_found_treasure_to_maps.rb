class AddFoundTreasureToMaps < ActiveRecord::Migration[6.0]
  def change
    add_column :maps, :found_treasure, :boolean
  end
end
