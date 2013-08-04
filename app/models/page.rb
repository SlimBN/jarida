class Page < ActiveRecord::Base
  attr_accessible :issue_id, :order, :slug, :title, :user_id

  belongs_to :issue

end
