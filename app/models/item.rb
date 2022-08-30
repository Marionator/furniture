class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :type, presence: true
  validates :description, presence: true
  validates :price, presence: trued
  validates :shipping, presence: true
end
