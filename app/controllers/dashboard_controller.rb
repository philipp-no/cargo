class DashboardController < ApplicationController
  def index
    @trips = Trip.where(user: current_user)
    @requests = Booking.where(user: current_user)
  end
end
