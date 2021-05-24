class Trip < ApplicationRecord
    has_many_attached :images
    has_many :trips_attractions
    has_many :attractions, through: :trips_attractions
    has_many :notes
    belongs_to :user
end
