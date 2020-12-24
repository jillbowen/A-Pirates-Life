class RemoveMapImageFromMaps < ActiveRecord::Migration[6.0]
  def change
    remove_column :maps, :map_image, :binary
  end
end
