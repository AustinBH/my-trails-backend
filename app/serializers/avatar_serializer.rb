class AvatarSerializer < ActiveModel::Serializer
  attributes :id, :img_url, :name
end