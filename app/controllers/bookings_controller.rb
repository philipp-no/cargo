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

  def accept
    @booking = Booking.find_by(trip_id: params[:trip_id])
    @booking.accepted!
    redirect_to trip_bookings_path(params[:trip_id]), notice: 'Booking confirmed!'
  end

  def decline
    @booking = Booking.find_by(trip_id: params[:trip_id])
    @booking.declined!
    redirect_to trip_bookings_path(params[:trip_id]), notice: 'Booking declined!'
  end
end
