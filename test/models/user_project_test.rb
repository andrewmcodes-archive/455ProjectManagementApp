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

require 'test_helper'

class UserProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
