class Image < ActiveRecord::Base
  belongs_to :imageable, :polymorphic => true
  has_attached_file :attached_image,
                    :styles => {:large => "320x454!", 
                                :medium => "200x240!",
                                :thumb => "104x134!" },
                    :path => "/attachments/:category/:owner_id/:id/:style/:filename",
                    :storage => :s3,
                    :s3_credentials => "#{Rails.root}/config/s3.yml"

  attr_accessible :attached_image

  validates_attachment :attached_image, :presence => true,
                       :content_type => { :content_type => ['image/jpeg', 'image/jpg', 'image/png'] },
                       :size => { :in => 0..5.megabytes }
end
