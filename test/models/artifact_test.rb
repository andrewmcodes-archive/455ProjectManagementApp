# frozen_string_literal: true

# == Schema Information
#
# Table name: artifacts
#
#  id         :integer          not null, primary key
#  name       :string
#  key        :string
#  project_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ArtifactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
