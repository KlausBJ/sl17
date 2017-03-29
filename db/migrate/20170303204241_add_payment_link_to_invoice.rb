class AddPaymentLinkToInvoice < ActiveRecord::Migration[5.0]
  def change
    add_column :invoices, :payment_link, :string
  end
end
