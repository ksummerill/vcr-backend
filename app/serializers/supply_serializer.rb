class SupplySerializer < ActiveModel::Serializer
  attributes :item, :project_id

  belongs_to :project
end
