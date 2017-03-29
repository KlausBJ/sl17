class AddInvoiceToTicket < ActiveRecord::Migration[5.0]
  def change
    add_reference :tickets, :invoice, foreign_key: true
  end
end
