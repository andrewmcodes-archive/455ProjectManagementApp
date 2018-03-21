# frozen_string_literal: true

json.array! @user_projects, partial: 'user_projects/user_project', as: :user_project
