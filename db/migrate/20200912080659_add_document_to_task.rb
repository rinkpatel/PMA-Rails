class AddDocumentToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :document, :string
  end
end
