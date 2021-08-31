class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @trips = Trip.where(status: 0).where.not(user: current_user)
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
    @start_addresses = @trips.map do |trip_address|
      sanitize_address(trip_address.start_location)
    end
    @end_addresses = @trips.map do |trip_address|
      sanitize_address(trip_address.end_location)
    end
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    if current_user.driver == true
      @trip = Trip.new
    else
      redirect_to become_driver_path
    end
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    @trip.status = 0
    if @trip.save!
      redirect_to dashboard_index_path, notice: 'Your trip was created!'
    else
      render :new
    end
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)
    redirect_to dashboard_index_path, notice: 'Your trip was updated!'
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to dashboard_index_path, notice: 'Your trip was canceled. This cannot be undone.'
  end

  private

  def trip_params
    params.require(:trip).permit(
      :start_time,
      :start_location,
      :end_time,
      :end_location,
      :price,
      :price_cents,
      :capacity,
      :description
    )
  end

  def sanitize_address(address)
    address_array = address.split(",")
    street_name = address_array[0].chars.reject { |char| char.match?(/\A-?\d+\Z/) }.join
    city = address_array[1]
    return "#{city}, #{street_name}"
  end
end
