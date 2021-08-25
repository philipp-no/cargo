class BookingsController < ApplicationController
  def new
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new
  end

  def create
  end

  def index
    @trip = Trip.find(params[:trip_id])
    @bookings = @trip.bookings
  end
end
