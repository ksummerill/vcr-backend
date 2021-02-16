class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :inventories
  has_many :supplies

end
