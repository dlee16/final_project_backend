class Group < ApplicationRecord
    belongs_to :lifestage 
    has_many :comments
    has_many :users, through: :comments
end
