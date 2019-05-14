class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :lifestage_id
  belongs_to :lifestage
  has_many :users
end
