class InventorySerializer < ActiveModel::Serializer
  attributes :name, :description, :project_id

  belongs_to :project
end
