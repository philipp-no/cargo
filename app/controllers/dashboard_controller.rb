class DashboardController < ApplicationController
  def index
    @trips = Trip.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)
    redirect_to dashboard_index_path, notice: 'Your trip was updated!'
  end

  private

  def trip_params
    params.require(:trip).permit(
      :start_time,
      :start_location,
      :end_time,
      :end_location,
      :price_cents,
      :capacity,
      :description
    )
  end
end
