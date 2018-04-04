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

class Artifact < ApplicationRecord
  before_save :upload_to_s3
  attr_accessor :upload
  belongs_to :project

  MAX_FILESIZE = 10.megabytes
  validates_presence_of :name, :upload
  validates_uniqueness_of :name

  validate :uploaded_fize_size

  private

  def upload_to_s3
    s3 = Aws::S3::Resource.new
    tenant_name = Tenant.find(Thread.current[:tenant_id]).name
    obj = s3.bucket(ENV['S3_BUCKET']).object("#{tenant_name}/#{upload.original_filename}")
    binding.pry
    obj.upload_file(upload.path, acl: 'private')
    self.key = obj.public_url
  end

  def uploaded_fize_size
    if upload
      errors.add(:upload, "File size must be less than #{self.class::MAX_FILESIZE}") unless upload.size <= self.class::MAX_FILESIZE
    end
  end
end
