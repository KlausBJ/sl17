class AddFirstDateToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :first_date, :date
  end
end
