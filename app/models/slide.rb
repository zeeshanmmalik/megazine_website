class Slide < ActiveRecord::Base
  has_one :image, :as => :imageable, :dependent => :destroy
  attr_accessible :page_url, :published, :title, :image_attributes
  validates :title, :page_url, :image, :presence => true
end
