class ProjectSerializer < ActiveModel::Serializer
  attributes :name

  has_many :inventories
  has_many :supplies

end
