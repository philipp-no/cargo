class Booking < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  enum status: [:pending, :accepted, :declined]
  validates :status, presence: true
  validates :item, presence: true
  validates :size, presence: true, 
end
