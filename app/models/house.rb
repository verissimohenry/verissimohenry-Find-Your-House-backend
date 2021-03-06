class House < ApplicationRecord
  validates :name, :description, :location, :price, :photo, presence: true

  has_many :favourites, dependent: :destroy
end
