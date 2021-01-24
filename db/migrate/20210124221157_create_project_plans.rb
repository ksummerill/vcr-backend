class CreateProjectPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :project_plans do |t|
      t.string :name

      t.timestamps
    end
  end
end
