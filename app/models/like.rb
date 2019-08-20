class Like < ApplicationRecord
    belongs_to :user

    validates :trail_id, presence: true
    validate :one_user_cannot_like_trail_twice

    def one_user_cannot_like_trail_twice
        user_likes = Like.all.select do |like|
            like.user_id == user.id
        end
        user_likes.each do |like|
            if like.trail_id == trail_id
                errors.add(:trail_id, "can't like the same trail twice")
            end
        end
    end
end
