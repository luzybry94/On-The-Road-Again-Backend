class Api::V1::StatesController < ApplicationController

    skip_before_action :authorized

    def index
        @states = State.all
        render json: @states 
    end

end