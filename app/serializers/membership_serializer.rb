class MembershipSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :group_id, :lifestage_id
  belongs_to :user
  belongs_to :group
end

def lifestage_id
  self.group.lifestage_id
end 