class RemoveMapNameFromMaps < ActiveRecord::Migration[6.0]
  def change
    remove_column :maps, :map_name, :string
  end
end
