class ChangeTaskDescriptionName < ActiveRecord::Migration[5.2]
  def change
    rename_column :tasks, :decription, :description
  end
end
