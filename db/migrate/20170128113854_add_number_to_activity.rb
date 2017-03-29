class AddNumberToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :number, :integer
  end
end
