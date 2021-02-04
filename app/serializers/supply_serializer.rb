class SupplySerializer
  include FastJsonapi::ObjectSerializer
  attributes :item, :project_plan_id
end
