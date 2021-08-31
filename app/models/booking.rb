class Booking < ApplicationRecord
  has_one :chatroom, dependent: :destroy
  belongs_to :trip
  belongs_to :user
  enum status: [:pending, :accepted, :declined]
  validates :status, presence: true
  validates :item, presence: true
  validates :size, presence: true
  around_update :create_chatroom, if: :status_changed?

  def create_chatroom
    if self.accepted? && chatroom.nil?
      Chatroom.create(booking: self)
    end
  end
end
