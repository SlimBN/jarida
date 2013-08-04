class Issue < ActiveRecord::Base
  attr_accessible :journal_id, :number, :slug, :title

  belongs_to :journal

  has_many :pages
  
end
