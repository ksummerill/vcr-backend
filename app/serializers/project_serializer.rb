class ProjectSerializer < ActiveModel::Serializer
  attributes :name

  has_one :inventory
  has_many :supplies

end
