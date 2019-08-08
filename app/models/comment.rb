class Comment < ApplicationRecord
    belongs_to :user

    validates :trail_id, presence: true
    validates :content, presence: true
end
