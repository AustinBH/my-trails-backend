class Image < ApplicationRecord
    belongs_to :user

    validates :trail_id, presence: true
end
