class Item < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_category_name_description,
                  against: [ :name, :category, :description ],
                  using: {
                    tsearch: { prefix: true }
                  }
  scope :filter_by_category, ->(category) { where category: category }
  scope :filter_by_color, ->(color) { where color: color }
  scope :filter_by_shipping, ->(shipping) { where shipping: shipping }

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
