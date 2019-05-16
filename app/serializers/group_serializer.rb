class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :lifestage_id, :lifestage_name
  # belongs_to :lifestage
  has_many :users
  has_many :comments
end

def lifestage_name
  self.lifestage.name
end 