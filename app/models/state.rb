class State < ApplicationRecord
    has_many :trips_states
    has_many :trips, through: :trips_states
end
