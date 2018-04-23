class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :decription
      t.date :completed

      t.timestamps
    end
  end
end
