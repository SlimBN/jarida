class Journal < ActiveRecord::Base
  attr_accessible :active, :description, :journalcover, :logo, :name, :slug, :user_id

  has_many :issues

  belongs_to :user
  
end
