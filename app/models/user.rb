class User < ApplicationRecord
    has_many :comments
    has_many :groups, through: :comments
    has_many :user_lifestages
    has_many :lifestages, through: :user_lifestages
    has_secure_password

    validates :username, uniqueness: true
end
