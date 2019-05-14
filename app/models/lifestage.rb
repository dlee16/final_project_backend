class Lifestage < ApplicationRecord
has_many :groups
has_many :user_lifestages
has_many :users, through: :user_lifestages
end
