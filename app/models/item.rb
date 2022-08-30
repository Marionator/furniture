class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :type, presence: true
  validates :status, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :width, presence: true
  validates :height, presence: true
  validates :depth, presence: true
  validates :shipping, presence: true
end
