class User < ApplicationRecord
    has_many :comments
    has_many :groups, through: :comments
    has_many :user_lifestages
    has_many :lifestages, through: :user_lifestages
    has_many :memberships
    has_secure_password

    validates :username, uniqueness: true
    validates :name, length: { minimum: 2 }
    validates :fun_fact, length: { minimum: 4 }
    validates :password, length: { in: 3..20 }
    validates :email, presence: true
end
