class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :winPer, :password_digest, :score
end
