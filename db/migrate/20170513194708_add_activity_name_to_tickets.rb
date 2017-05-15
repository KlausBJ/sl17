class AddActivityNameToTickets < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :activity_name, :string
  end
end
