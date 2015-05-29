class CreateCities < ActiveRecord::Migration
  def change
    create_table :project_categories do |t|
      t.string :title, index: true
      t.text   :description, index: true
      t.string :avatar, index: true
	  t.timestamps null: false
    end

    change_table :projects do |t|
      t.belongs_to :project_category, index: true
    end

    create_table :project_category_attacments do |t|
      t.belongs_to :project_category
      t.string :image
      t.timestamps null: false
    end

     add_column :project_categories, :meta_title, :string, index: true
     add_column :project_categories, :meta_description, :string, index: true
     add_column :project_categories, :meta_keywords, :string, index: true
     add_column :project_categories, :meta_copyright, :string, index: true

  end
end
