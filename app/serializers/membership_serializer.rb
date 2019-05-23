class MembershipSerializer < ActiveModel::Serializer
  attributes :id, :user, :group, :user_id

  def group
    GroupSerializer.new(self.object.group)
  end 

  def user_id
    self.object.user.id
  end 
end
