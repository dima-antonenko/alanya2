class AddAttachmentAvatarToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :avatar, :string
  end

  def self.down
    remove_column :products, :avatar, :string
  end
end
