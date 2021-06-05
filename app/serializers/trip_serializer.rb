class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_date, :end_date, :img
  has_many :states
  has_many :todos
end
