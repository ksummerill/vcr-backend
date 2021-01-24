class CreateInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :inventories do |t|
      t.string :name
      t.string :description
      t.belongs_to :project_plan, foreign_key: true

      t.timestamps
    end
  end
end
