class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :inventories, :project_plan_id, :project_id
    rename_column :supplies, :project_plan_id, :project_id
  end
end
