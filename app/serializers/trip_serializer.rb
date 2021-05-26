class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_start, :date_end, :img
  has_many :attractions
  has_many :states
  has_many :todos
  belongs_to :user
end
