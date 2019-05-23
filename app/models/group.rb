class Group < ApplicationRecord
    belongs_to :lifestage
    has_many :comments
    has_many :users, through: :comments
    has_many :memberships
    has_many :users, through: :memberships
end
