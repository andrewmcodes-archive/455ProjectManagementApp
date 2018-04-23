json.extract! task, :id, :title, :decription, :completed, :created_at, :updated_at
json.url task_url(task, format: :json)
