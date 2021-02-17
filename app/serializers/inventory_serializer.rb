class InventorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :project_id

  belongs_to :project
end
