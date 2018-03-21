# frozen_string_literal: true

# == Schema Information
#
# Table name: members
#
#  id         :integer          not null, primary key
#  tenant_id  :integer
#  user_id    :integer
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
