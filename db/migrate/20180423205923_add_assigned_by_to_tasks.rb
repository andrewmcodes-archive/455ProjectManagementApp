# frozen_string_literal: true

class AddAssignedByToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :assigned_by, :int
    add_column :tasks, :assigned_to, :int
    add_column :tasks, :expected_completion_date, :date
  end
end
