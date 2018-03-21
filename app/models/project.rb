# frozen_string_literal: true

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

class Project < ApplicationRecord
  belongs_to :tenant
  has_many :artifacts, dependent: :destroy
  has_many :user_projects, dependent: :destroy
  has_many :users, through: :user_projects
  validates_uniqueness_of :title
  validate :free_plan_can_only_have_one_project

  def free_plan_can_only_have_one_project
    if new_record? && (tenant.projects.count > 0) && (tenant.plan == 'free')
      errors.add(:base, 'Free plans cannot have more than one project')
    end
  end

  def self.by_user_plan_and_tenant(tenant_id, user)
    tenant = Tenant.find(tenant_id)
    if tenant.plan == 'premium'
      if user.is_admin?
        tenant.projects
      else
        user.projects.where(tenant_id: tenant.id)
      end
    else
      if user.is_admin?
        tenant.projects.order(:id).limit(1)
      else
        user.projects.where(tenant_id: tenant.id).order(:id).limit(1)
      end
    end
  end
end
