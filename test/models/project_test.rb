# == Schema Information
#
# Table name: projects
#
#  id                       :integer          not null, primary key
#  title                    :string
#  details                  :string
#  expected_completion_date :date
#  tenant_id                :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
