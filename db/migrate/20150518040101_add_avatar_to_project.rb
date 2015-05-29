class AddAvatarToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :avatar, :string
  	add_column :projects, :type_object, :string
  	add_column :projects, :to_airport, :integer

  	 add_column :projects, :meta_title, :string
     add_column :projects, :meta_description, :string
     add_column :projects, :meta_keywords, :string
     add_column :projects, :meta_copyright, :string
  end
end
