class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :avatar, index: true
      t.string :name, index: true
      t.string :description, index: true
      t.string :skype, index: true
      t.string :languages, index: true
      t.string :email, index: true
      t.string :phone, index: true
      t.timestamps null: false
    end

    create_table :managers_projects do |t|
      t.belongs_to :project, index: true
      t.belongs_to :manager, index: true
    end

    add_column :projects, :some_manager, :integer, index: true
  end
end
