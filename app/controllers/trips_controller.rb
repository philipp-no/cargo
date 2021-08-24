class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    query = "#{params[:start_location]} #{params[:end_location]}"
    if query.present?
      @trips = trip.search_by_start_location_and_end_location(query)
    else
      @trips = Trip.all
    end
  end

   def show
    @trip = Trip.find(params[:id])
   end
end
