class Trip < ApplicationRecord
    has_many :trips_attractions
    has_many :attractions, through: :trips_attractions
    has_many :trips_states
    has_many :states, through: :trips_states
    has_many :todos, dependent: :destroy
    belongs_to :user

    def date_start
        self.start_date.to_formatted_s(:long) 
    end

    def date_end
        self.end_date.to_formatted_s(:long) 
    end
end
