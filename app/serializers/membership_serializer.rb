class MembershipSerializer < ActiveModel::Serializer
  attributes :id, :user, :group, :user_id, :ls_id

  def group
    GroupSerializer.new(self.object.group)
  end 

  def user_id
    self.object.user.id
  end 

  def ls_id
    self.object.group.lifestage_id
  end 

end
