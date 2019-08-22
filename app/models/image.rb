class Image < ApplicationRecord
    belongs_to :user

    validates :trail_id, presence: true
    validates :img_url, presence: true
end
