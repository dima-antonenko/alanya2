class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|

      t.belongs_to :project, index: true
      t.string :name, index: true
      t.string :email, index: true
      t.string :phone, index: true
      t.string :skype, index: true
      t.text   :message, index: true

     t.timestamps null: false
    end
  end
end
