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
      if params[:capacity] == "Medium"
        @trips = @trips.where(capacity: ["Medium", "Large"])
      end
      if params[:capacity] == "Large"
        @trips = @trips.where(capacity: ["Large"])
      end
    end
    @markers = @trips.geocoded.map do |trip|
      {
        lat: trip.latitude,
        lng: trip.longitude,
        info_window: render_to_string(partial: "info_window", locals: { trip: trip }),
        image_url: helpers.asset_url('car-solid.svg')
      }
    end
  end

  def show
    @trip = Trip.find(params[:id])
    @markers = {
        lat: @trip.latitude,
        lng: @trip.longitude,
        image_url: helpers.asset_url('car-solid.svg')
      }
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    @trip.status = 0

    if @trip.save
      redirect_to trips_path(@trip)
    else
      render :new
    end
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
