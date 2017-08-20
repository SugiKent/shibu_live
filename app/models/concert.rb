class Concert < ApplicationRecord

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  belongs_to :user
  has_many :concert_category
  has_many :categories, through: :concert_category

  scope :now_playing, -> { where('start_at <= :time AND :time <= end_at', time: Time.now + 9.hours)   }
  scope :today_playing, -> {
    today = Date.today
    where(start_at: today.beginning_of_day..today.end_of_day)
  }
end
