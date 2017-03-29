class AddNumberToTask < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :number, :integer
  end
end
