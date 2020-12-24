class AddSecretHidingPlaceToMaps < ActiveRecord::Migration[6.0]
  def change
    add_column :maps, :secret_hiding_place, :string
  end
end
