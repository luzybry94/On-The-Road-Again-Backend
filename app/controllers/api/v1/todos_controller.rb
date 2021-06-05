class Api::V1::TodosController < ApplicationController
    before_action :set_trip, only: [:update, :destroy, :create]
    before_action :set_todo, only: [:update, :destroy]

    def create
      @todo = Todo.new(todo_params)
      if @todo.save
        render json: @trip
      else
        render json: @todo.errors, status: :unprocessable_entity
      end
    end

    def update
        if @todo.update(todo_params)
          render json: @trip
        else
          render json: @todo.errors, status: :unprocessable_entity
        end
    end

    def destroy
      if @todo.destroy
        render json: @trip
      else
        render json: {error: "Todo not found"}
      end
    end
  
    private

    def set_trip
      @trip = Trip.find(params[:trip_id])
    end

    def set_todo
      @todo = Todo.find(params[:id])
    end

    def todo_params
      params.permit(:content, :completed, :trip_id)
    end
end