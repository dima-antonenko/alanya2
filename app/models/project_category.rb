class ProjectCategory < ActiveRecord::Base
	has_many :projects

	mount_uploader :avatar, AvatarUploader

	has_many :project_category_attachments, inverse_of: :project_category
	accepts_nested_attributes_for :project_category_attachments, allow_destroy: true
end
