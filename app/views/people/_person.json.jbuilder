json.extract! person, :id, :name, :member_id, :ptype_id, :created_at, :updated_at
json.url person_url(person, format: :json)