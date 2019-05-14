class LifestageSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :groups
  has_many :users
end
