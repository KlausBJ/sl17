class AddLastDateToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :last_date, :date
  end
end
