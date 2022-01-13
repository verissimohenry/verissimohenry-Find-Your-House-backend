class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :price
      t.string :photo

      t.timestamps
    end
  end
end
