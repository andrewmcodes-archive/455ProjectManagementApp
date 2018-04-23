# frozen_string_literal: true

class CreateUserTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tasks do |t|
      t.belongs_to :tasks, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.references :tenant, foreign_key: true
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
