class Attraction < ApplicationRecord
    has_many :trips_attractions
    has_many :trips, through: :trips_attractions

    def date_lg
        self.date.to_formatted_s(:long) 
    end
end
