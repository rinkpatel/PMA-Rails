class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :status
      t.datetime :deadline
      t.references :project, index: true

      t.timestamps
    end
  end
end
