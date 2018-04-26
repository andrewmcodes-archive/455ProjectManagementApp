class DropUserTasksTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :user_tasks
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
