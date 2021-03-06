class Api::V1::TripsController < ApplicationController
  before_action :set_trip, only: [:show, :update, :destroy]

  # GET /trips
  def index
    @trips = Trip.where(user_id: logged_in_user.id)

    render json: @trips
  end

  # GET /trips/1
  def show
    render json: @trip
  end

  # POST /trips
  def create
    @trip = logged_in_user.trips.new(trip_params)

    if @trip.save
      render json: @trip, status: :created
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trips/1
  def update
    if @trip.update(trip_params)
      render json: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trips/1
  def destroy
    if @trip.destroy
      render json: @trip.id, status: :ok
    else
      render json: {error: "Delete Unsuccessful"}, status: :unprocessable_entity
    end
  end

  private

    def set_trip
      @trip = Trip.find(params[:id])
    end

    def trip_params
      params.permit(:name, :start_date, :end_date, :img, state_ids: [])
    end
end
