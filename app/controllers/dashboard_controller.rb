class DashboardController < ApplicationController
  def index
    @trips = Trip.where(user: current_user).where.not(status: 2)
    @past_trips = Trip.where(user: current_user, status: 2)
    @bookings = Booking.where(user: current_user).where.not(status: 2)
    @past_bookings = Booking.where(user: current_user, status: 2)
  end
end
