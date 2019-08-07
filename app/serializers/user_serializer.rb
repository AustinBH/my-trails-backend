class UserSerializer < ActiveModel::Serializer
  attributes :username, :likes, :comments, :completed_hikes
end
