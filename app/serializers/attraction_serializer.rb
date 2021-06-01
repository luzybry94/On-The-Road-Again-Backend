class AttractionSerializer < ActiveModel::Serializer
  attributes :id, :name, :pricing, :date_lg, :img, :location, :trip_id
end
