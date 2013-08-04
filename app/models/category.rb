class Category < ActiveRecord::Base
  attr_accessible :activated, :description, :name, :slug, :user_id

  has_many :pages

end
