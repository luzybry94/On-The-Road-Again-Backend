class TodoSerializer < ActiveModel::Serializer
  attributes :id, :content, :completed
end
