class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :lifestage_id, :lifestage_name
  belongs_to :lifestage
  has_many :users
  has_many :comments
  
  def lifestage_name
    self.object.lifestage.name
  end 
end