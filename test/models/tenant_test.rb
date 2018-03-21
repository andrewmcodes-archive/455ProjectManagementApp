# frozen_string_literal: true

# == Schema Information
#
# Table name: tenants
#
#  id         :integer          not null, primary key
#  tenant_id  :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  plan       :string
#

require 'test_helper'

class TenantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
