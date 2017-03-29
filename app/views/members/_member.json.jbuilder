json.extract! member, :id, :number, :name, :email, :created_at, :updated_at
json.url member_url(member, format: :json)