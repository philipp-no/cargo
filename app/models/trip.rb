class Trip < ApplicationRecord
  has_many :bookings
  belongs_to :user
  enum status: [:unbooked, :booked, :completed]
end
