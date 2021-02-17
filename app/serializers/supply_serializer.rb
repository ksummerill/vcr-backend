class SupplySerializer < ActiveModel::Serializer
  attributes :id, :item, :project_id

  belongs_to :project
end
