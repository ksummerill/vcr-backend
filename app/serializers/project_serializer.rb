class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :supplies, :inventory

  has_many :inventories
  has_many :supplies

end
