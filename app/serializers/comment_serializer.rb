class CommentSerializer < ActiveModel::Serializer
  attributes :content, :user_id, :username

  def username
    object.user.username
  end
end