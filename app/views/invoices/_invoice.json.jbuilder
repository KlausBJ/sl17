json.extract! invoice, :id, :member_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)