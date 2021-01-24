class CreateSupplies < ActiveRecord::Migration[6.0]
  def change
    create_table :supplies do |t|
      t.string :item
      t.belongs_to :project_plan, foreign_key: true

      t.timestamps
    end
  end
end
