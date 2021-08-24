class Trip < ApplicationRecord
  has_many :bookings
  belongs_to :user
  enum status: [:unbooked, :booked, :completed]
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :start_location, presence: true
  validates :end_location, presence: true
  validates :price, presence: true
  validates :capacity, presence: true
  validates :status, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_start_location_and_end_location,
  against: [ :start_location, :end_location ],
  using: {
    tsearch: { prefix: true }
  }
end
