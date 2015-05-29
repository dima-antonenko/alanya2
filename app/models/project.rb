class Project < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader

	belongs_to :project_category
	
	has_many :project_attachments, inverse_of: :project
	accepts_nested_attributes_for :project_attachments, allow_destroy: true

	has_many :questions

	has_many :project_application_mails

	has_and_belongs_to_many :managers
	
end