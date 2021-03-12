class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :inventories
  has_many :supplies
  has_many :votes

end
