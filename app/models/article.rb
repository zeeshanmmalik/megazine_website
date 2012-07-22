class Article < ActiveRecord::Base
  attr_accessible :author, :body, :title
end
