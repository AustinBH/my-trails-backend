class Avatar < ApplicationRecord
    has_many :users

    validates :img_url, presence: true
    validates :name, presence: true
end
