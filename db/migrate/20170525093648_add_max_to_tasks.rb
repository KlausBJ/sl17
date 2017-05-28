class AddMaxToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :max, :integer
  end
end
