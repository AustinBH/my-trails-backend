class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :distance, :results, :avatar, :likes, :comments, :completed_hikes

  def avatar
    {id: object.avatar.id,
    img_url: object.avatar.img_url}
  end

  def likes
    self.object.likes.map do |like|
      {trail_id: like.trail_id,
      user_id: like.user_id}
    end
  end
  def comments
    self.object.comments.map do |comment|
      {trail_id: comment.trail_id,
      user_id: comment.user_id}
    end
  end
  def completed_hikes
    self.object.completed_hikes.map do |completed_hike|
      {trail_id: completed_hike.trail_id,
      user_id: completed_hike.user_id}
    end
  end
end
