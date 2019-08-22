class CompletedHike < ApplicationRecord
    belongs_to :user

    validates :trail_id, presence: true
    validate :one_user_cannot_complete_trail_twice

    def one_user_cannot_complete_trail_twice
        if user
            user_completed_hikes = CompletedHike.all.select do |completed_hike|
                completed_hike.user_id == user.id
            end
            user_completed_hikes.each do |completed_hike|
                if completed_hike.trail_id == trail_id
                    errors.add(:trail_id, "can't mark the same trail as completed")
                end
            end
        end
    end
end
