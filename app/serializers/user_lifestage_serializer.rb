class UserLifestageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :lifestage_id, :lifestage_name
  belongs_to :user
  belongs_to :lifestage

  def lifestage_name
    self.object.lifestage.name
  end 
end
