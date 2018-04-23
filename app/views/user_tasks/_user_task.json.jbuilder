# frozen_string_literal: true

json.extract! user_task, :id, :created_at, :updated_at
json.url user_task_url(user_task, format: :json)
