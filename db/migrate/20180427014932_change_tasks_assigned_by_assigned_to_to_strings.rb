class ChangeTasksAssignedByAssignedToToStrings < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :assigned_by, :string
    change_column :tasks, :assigned_to, :string
  end
end
