json.extract! user, :id, :first_name, :last_name, :mobile_no, :date_of_birth, :created_at, :updated_at
json.url user_url(user, format: :json)
