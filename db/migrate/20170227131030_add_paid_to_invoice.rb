class AddPaidToInvoice < ActiveRecord::Migration[5.0]
  def change
    add_column :invoices, :paid, :boolean
  end
end
