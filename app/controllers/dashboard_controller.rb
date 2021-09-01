class DashboardController < ApplicationController
  def index
    @trips = Trip.where(user: current_user).where.not(status: 2).order(:start_time)
    @past_trips = Trip.where(user: current_user, status: 2).order(:start_time)
    @bookings = Booking.joins(:trip).where(bookings: { user: current_user }).where.not(trips: { status: 2 }).order("trips.start_time asc")
    @past_bookings = Booking.joins(:trip).where(bookings: { user: current_user }).where(trips: { status: 2 }).order("trips.start_time asc")
  end
end
