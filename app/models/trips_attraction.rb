class TripsAttraction < ApplicationRecord
    belongs_to :trip
    belongs_to :attraction
end
