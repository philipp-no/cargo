class Trip < ApplicationRecord
  has_many :bookings
  belongs_to :user

  geocoded_by :start_location
  after_validation :geocode, if: :will_save_change_to_start_location?

  enum status: [:unbooked, :booked, :completed]
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :start_location, presence: true
  validates :end_location, presence: true
  validates :price, presence: true
  validates :capacity, presence: true
  validates :status, presence: true
  monetize :price_cents

  CAPACITY = ["Small", "Medium", "Large"]

  def count_pending_bookings
    Booking.where(trip: self, status: "pending").count
  end
end
