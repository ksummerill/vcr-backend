class RenameProjectPlanTable < ActiveRecord::Migration[6.0]
  def change
    rename_table :project_plans, :projects
  end
end
