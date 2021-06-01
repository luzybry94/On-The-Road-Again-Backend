class TodoSerializer < ActiveModel::Serializer
  attributes :id, :content, :completed, :trip_id
end
