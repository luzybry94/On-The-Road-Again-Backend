class Attraction < ApplicationRecord
    has_many :trips_attractions
    has_many :trips, through: :trips_attractions
end
