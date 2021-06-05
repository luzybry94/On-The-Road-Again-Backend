class AttractionSerializer < ActiveModel::Serializer
  attributes :id, :name, :pricing, :date, :img, :location, :trip_id
end
