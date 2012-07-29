class AddAttachmentAttachedImageToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.has_attached_file :attached_image
    end
  end

  def self.down
    drop_attached_file :images, :attached_image
  end
end
