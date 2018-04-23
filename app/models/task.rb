# frozen_string_literal: true
# == Schema Information
#
# Table name: tasks
#
#  id                       :integer          not null, primary key
#  title                    :string
#  description              :string
#  completed                :date
#  project_id               :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  assigned_by              :integer
#  assigned_to              :integer
#  expected_completion_date :date
#

class Task < ApplicationRecord
  belongs_to :project
  has_many :user_tasks
end
