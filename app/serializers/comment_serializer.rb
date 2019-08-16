class CommentSerializer < ActiveModel::Serializer
  attributes :content, :id, :user_id, :trail_id, :created_at, :username, :avatar

  def created_at
    self.object.created_at.localtime.strftime("%I:%M %p %m/%d/%Y")
  end

  def username
    object.user.username
  end

  def avatar
    if object.user.avatar_id
      avatar = Avatar.find(object.user.avatar_id)
      avatar.img_url
    end
  end
end