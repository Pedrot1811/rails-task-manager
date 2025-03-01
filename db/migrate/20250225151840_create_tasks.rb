class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :details
      t.boolean :completed

      t.timestamps
    end
    change_column_default :tasks, :completed, false
  end
end
