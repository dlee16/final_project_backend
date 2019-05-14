class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :group_id, :user_comment
  belongs_to :user
  belongs_to :group
end
