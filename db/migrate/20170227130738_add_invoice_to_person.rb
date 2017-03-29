class AddInvoiceToPerson < ActiveRecord::Migration[5.0]
  def change
    add_reference :people, :invoice, foreign_key: true
  end
end
