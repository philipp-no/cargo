class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @trips = Trip.all
    if params[:start_location].present?
      @trips = @trips.where("start_location ILIKE ?", "%#{params[:start_location]}%")
    end

    if params[:end_location].present?
      @trips = @trips.where("end_location ILIKE ?", "%#{params[:end_location]}%")
    end

    if params[:date].present?
      @trips = @trips.where("DATE(start_time) = ?", params[:date])
    end

    if params[:capacity].present?
      @trips = @trips.where(capacity: params[:capacity])
    end
  end

   def show
    @trip = Trip.find(params[:id])
   end

   def new
    @trip = Trip.new
   end

   def create
   end
end
