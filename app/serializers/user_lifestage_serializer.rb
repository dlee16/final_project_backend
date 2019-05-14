class UserLifestageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :lifestage_id
  belongs_to :user
  belongs_to :lifestage
end
