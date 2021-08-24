class User < ApplicationRecord
  has_many :trips
  has_many :bookings
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :years_driving, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
