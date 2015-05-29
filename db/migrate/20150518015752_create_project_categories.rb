class CreateProjectCategories < ActiveRecord::Migration
  def change

    create_table :projects do |t|
      t.string  :name, index: true
      t.string  :sku, index: true
      t.text    :description, index: true
      t.string  :start_price, index: true
      t.string  :final_price, index: true
      t.string  :type_deal, index: true 
      t.string  :final_price, index: true
      t.string  :rooms, index: true
      t.integer  :area, index: true
      t.string  :condition, index: true
      t.integer  :to_center, index: true
      t.integer  :mount_build, index: true
      t.integer  :year_build, index: true

      t.boolean  :has_conditioning, index: true, default: false
      t.boolean  :has_white_goods, index: true, default: false
      t.boolean  :has_furniture, index: true, default: false
      t.boolean  :has_water_heater, index: true, default: false
      t.boolean  :has_tapu, index: true, default: false
      t.boolean  :has_iskana, index: true, default: false


      t.timestamps null: false
    end
  end
end
