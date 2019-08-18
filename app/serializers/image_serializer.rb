class ImageSerializer < ActiveModel::Serializer
  attributes :trail_id, :username, :img_url, :avatar

  def username
    object.user.username
  end

  def avatar
    object.user.avatar.img_url
  end
end