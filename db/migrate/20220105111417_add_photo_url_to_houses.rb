class AddPhotoUrlToHouses < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :photo_url, :string
  end
end
