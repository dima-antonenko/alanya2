class ProjectCategoryAttacment < ActiveRecord::Base
   
   belongs_to :project_category
   mount_uploader :image, GalleryUploader
end
