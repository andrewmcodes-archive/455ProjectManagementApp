# frozen_string_literal: true

# == Schema Information
#
# Table name: user_projects
#
#  id         :integer          not null, primary key
#  project_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserProject < ApplicationRecord
  belongs_to :project
  belongs_to :user
end
