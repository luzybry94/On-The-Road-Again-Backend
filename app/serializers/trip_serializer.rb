class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_date, :end_date, :img
  has_many :attractions
  has_many :states
  has_many :todos
  belongs_to :user
end
