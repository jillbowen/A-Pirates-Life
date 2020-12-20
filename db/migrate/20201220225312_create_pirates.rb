class CreatePirates < ActiveRecord::Migration[6.0]
  def change
    create_table :pirates do |t|
      t.string :name
      t.string :password_digest
      t.string :name_of_ship
      t.integer :crew_size
      t.integer :bottles_of_rum

      t.timestamps
    end
  end
end
