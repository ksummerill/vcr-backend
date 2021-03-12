class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :count
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end
