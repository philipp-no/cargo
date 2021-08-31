class Booking < ApplicationRecord
  has_one :chatroom, dependent: :destroy
  belongs_to :trip
  belongs_to :user
  enum status: [:pending, :accepted, :declined]
  validates :status, presence: true
  validates :item, presence: true
  validates :size, presence: true
end
