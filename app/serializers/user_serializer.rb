class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :winPer, :password_digest
end
