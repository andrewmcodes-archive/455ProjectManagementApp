# frozen_string_literal: true

# == Schema Information
#
# Table name: user_tasks
#
#  id         :integer          not null, primary key
#  tasks_id   :integer
#  user_id    :integer
#  tenant_id  :integer
#  project_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
