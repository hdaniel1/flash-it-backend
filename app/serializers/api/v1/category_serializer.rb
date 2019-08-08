class Api::V1::CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id
end
