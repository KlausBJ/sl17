class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
