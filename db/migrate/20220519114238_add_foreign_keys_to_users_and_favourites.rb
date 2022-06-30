class AddForeignKeysToUsersAndFavourites < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :favourites, :users
  end
end
