namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'ffaker'
    
    [Category, Article].each(&:delete_all)
    

    Category.populate 20 do |category|
      category.name = Populator.words(1..3).titleize
      Article.populate 10..100 do |article|
        article.user_id = "1"
        article.title = Populator.words(1..5).titleize
        article.content = Populator.sentences(2..10)
        article.created_at = 2.years.ago..Time.now
      end
    end
  end
end