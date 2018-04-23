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

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
