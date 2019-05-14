class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :fun_fact
  has_many :lifestages
  has_many :groups
end
