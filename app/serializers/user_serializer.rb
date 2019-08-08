class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :likes, :comments, :completed_hikes
end
