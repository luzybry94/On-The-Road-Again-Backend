class TripsState < ApplicationRecord
    belongs_to :state
    belongs_to :trip
end
