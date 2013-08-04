class Article < ActiveRecord::Base
  attr_accessible :articlecover, :content, :title, :user_id

  belongs_to :user
  
end
