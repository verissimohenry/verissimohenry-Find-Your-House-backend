class AddForeignKeysToHousesAndFavourites < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :favourites, :houses
  end
end
