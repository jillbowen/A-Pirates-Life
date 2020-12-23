class AddMapImageToMaps < ActiveRecord::Migration[6.0]
  def change
    add_column :maps, :map_image, :binary
  end
end
