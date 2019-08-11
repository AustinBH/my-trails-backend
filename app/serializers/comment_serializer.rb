class CommentSerializer < ActiveModel::Serializer
  attributes :content, :id, :user_id, :trail_id, :created_at, :username

  def created_at
    self.object.created_at.strftime("%I:%M %p (UTC) %m/%d/%Y")
  end

  def username
    object.user.username
  end
end