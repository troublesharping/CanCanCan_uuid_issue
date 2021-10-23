json.extract! user_file, :id, :uuid, :data, :user_id, :created_at, :updated_at
json.url user_file_url(user_file, format: :json)
