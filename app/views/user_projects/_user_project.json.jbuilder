json.extract! user_project, :id, :project_id, :user_id, :created_at, :updated_at
json.url user_project_url(user_project, format: :json)
