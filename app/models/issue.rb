class Issue < ActiveRecord::Base
  has_one :image, :as => :imageable, :dependent => :destroy
  has_many :articles
  attr_accessible :currency_code, :description, :price, :status, :title, :image_attributes
  validates :title, :description, :status, :image, :presence => true
end
