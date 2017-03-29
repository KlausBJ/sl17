json.extract! ticket, :id, :person_id, :activity_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)