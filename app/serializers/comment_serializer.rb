class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :group_id, :user_comment, :user_name
  belongs_to :user
  belongs_to :group
end

def user_name
  self.user.name
end