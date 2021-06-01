class Api::V1::TodosController < ApplicationController
    before_action :set_trip, only: [:update, :destroy]

    def update
        @todo = Todo.find(params[:id])
        if @todo.update(todo_params)
          render json: @trip
        else
          render json: @todo.errors, status: :unprocessable_entity
        end
      end
  
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:trip_id])
    end


    # Only allow a trusted parameter "white list" through.
    def todo_params
      params.permit(:content, :completed, :trip_id)
    end
end