class BookingsController < ApplicationController
  def new
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new
  end

  def create
  end
end
