class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date
  validate :minimal_period

  def end_date_after_start_date
    if end_date < start_date
      errors.add :end_date, "must be after start date"
    end
  end

  def minimal_period
    if end_date >= start_date && end_date - start_date < 7
      errors.add :end_date, "minimal rent period is 7 days"
    end
  end
end
