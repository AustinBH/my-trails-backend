class User < ApplicationRecord
    has_many :likes
    has_many :completed_hikes
    has_many :comments

    validates :username, presence: true
    validates :username, uniqueness: true

    has_secure_password
end
