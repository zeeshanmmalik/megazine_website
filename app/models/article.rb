class Article < ActiveRecord::Base
  has_one :image, :as => :imageable, :dependent => :destroy
  attr_accessible :author, :body, :title, :image_attributes

  accepts_nested_attributes_for :image, :allow_destroy => true

  validates :author, :title, :body, :presence => true
  validates :image, :presence => { :message => "is required" }
end
