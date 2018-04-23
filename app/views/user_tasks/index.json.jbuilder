# frozen_string_literal: true

json.array! @user_tasks, partial: 'user_tasks/user_task', as: :user_task
