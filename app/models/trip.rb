class Trip < ApplicationRecord
    has_many :attractions, dependent: :destroy
    has_many :trips_states
    has_many :states, through: :trips_states
    has_many :todos, dependent: :destroy
    belongs_to :user
end
