class Item < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  validates :photo, presence: true
  validates :name, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :shipping, presence: true
end
