class User < ApplicationRecord
    belongs_to :avatar
    has_many :likes, dependent: :delete_all
    has_many :completed_hikes, dependent: :delete_all
    has_many :comments, dependent: :delete_all

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :password, presence: true
    validates :results, presence: true
    validates :distance, presence: true

    has_secure_password
end
