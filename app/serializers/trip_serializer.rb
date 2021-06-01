class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_start, :date_end, :img
  has_many :states
  has_many :todos
end
