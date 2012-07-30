class Issue < ActiveRecord::Base
  has_one :image, :as => :imageable, :dependent => :destroy
  has_many :articles
  attr_accessible :currency_code, :description, :published, :price, :title, :image_attributes
  validates :title, :description, :image, :presence => true
end
