class CreateProjectApplicationMails < ActiveRecord::Migration
  def change
    create_table :project_application_mails do |t|
      t.belongs_to :project, index: true
      t.string :name, index: true
      t.string :email, index: true
      t.timestamps null: false
    end
  end
end
