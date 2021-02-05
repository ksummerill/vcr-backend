class InventorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :project_id, :project
end
