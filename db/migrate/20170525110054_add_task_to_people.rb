class AddTaskToPeople < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :task, :boolean
  end
end
