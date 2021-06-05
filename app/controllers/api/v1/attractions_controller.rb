class Api::V1::AttractionsController < ApplicationController
  before_action :set_attraction, only: [:show, :update, :destroy]

  # GET /attractions
  def index
    @attractions = Attraction.where(trip_id: params[:trip_id])

    render json: @attractions
  end

  # GET /attractions/1
  def show
    render json: @attraction
  end

  # POST /attractions
  def create
    @attraction = Attraction.new(attraction_params)

    if @attraction.save
      render json: @attraction, status: :created
    else
      render json: @attraction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /attractions/1
  def update
    if @attraction.update(attraction_params)
      render json: @attraction
    else
      render json: @attraction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /attractions/1
  def destroy
    if @attraction.destroy
      render json: @attraction.id, status: :ok
    else
      render json: {error: "Delete Unsuccessful"}, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attraction
      @attraction = Attraction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def attraction_params
      params.permit(:name, :pricing, :date, :img, :location, :trip_id)
    end
end
