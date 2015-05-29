class AddProductCategoryBigImage < ActiveRecord::Migration
  def change
  	add_column :product_categories, :big_image, :string

  end
end
