class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :username, :password_digest, :avatar
end
