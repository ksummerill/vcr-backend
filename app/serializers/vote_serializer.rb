class VoteSerializer < ActiveModel::Serializer
  attributes :id, :count, :project_id

  belongs_to :project
end
