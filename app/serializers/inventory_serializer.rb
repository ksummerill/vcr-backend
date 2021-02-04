class InventorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :project_plan_id
end
