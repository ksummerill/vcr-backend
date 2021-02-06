class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :supplies, :inventory

end
