class BookingsController < ApplicationController
  def new
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new
    @size = params[:size]
  end

  def create
    @trip =Trip.find(params[:trip_id])
    @booking = Booking.new(booking_params)
    @booking.size = params[:booking][:size][0]
    @booking.user = current_user
    @booking.trip = @trip
    @booking.pending!
    if @booking.save
      redirect_to dashboard_index_path, notice: 'Your request was received and you will be notified when the driver accepts!'
    else
      render :new
    end
  end

  def index
    @trip = Trip.find(params[:trip_id])
    @bookings = @trip.bookings
  end

  def accept
    @booking = Booking.find_by(trip_id: params[:trip_id])
    @booking.accepted!
    if params[:remove_listing] == true
      @trip = @booking.trip
      @trip.status = 1
      @trip.bookings.each do |booking|
        if booking.pending?
          booking.declined!
        end
      end
      @trip.save
      redirect_to trip_bookings_path(params[:trip_id]), notice: 'Booking confirmed! Your trip is fully booked and all other requests have been declined.'
    else
      redirect_to trip_bookings_path(params[:trip_id]), notice: 'Booking confirmed! Your trip is still accepting bookings.'
    end
  end

  def decline
    @booking = Booking.find_by(trip_id: params[:trip_id])
    @booking.declined!
    redirect_to trip_bookings_path(params[:trip_id]), notice: 'Booking declined!'
  end


  private 

  def booking_params
    params.require(:booking).permit(:description, :size, :item)
  end
end
