class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :title, index: true
      t.timestamps null: false
    end


  end
end
