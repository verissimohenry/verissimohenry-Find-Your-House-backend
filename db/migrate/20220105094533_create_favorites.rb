class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.bigint :user_id
      t.bigint :house_id
      t.index :house_id, unique: true
      t.index :user_id, unique: true

      t.timestamps
    end
  end
end
