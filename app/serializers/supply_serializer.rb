class SupplySerializer
  include FastJsonapi::ObjectSerializer
  attributes :item, :project_id, :project
end
