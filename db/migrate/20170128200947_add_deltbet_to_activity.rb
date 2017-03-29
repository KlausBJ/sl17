class AddDeltbetToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :deltbet, :integer
  end
end
