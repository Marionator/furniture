class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items
  has_many :bookings
  has_many :favorites

  def favorited_item?(item)
    favorites.map(&:item).include?(item)
  end
end
