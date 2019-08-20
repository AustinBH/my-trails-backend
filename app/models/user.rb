class User < ApplicationRecord
    belongs_to :avatar
    has_many :likes
    has_many :completed_hikes
    has_many :comments

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :password, presence: true

    has_secure_password
end
