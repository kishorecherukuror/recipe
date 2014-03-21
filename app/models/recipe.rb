class Recipe < ActiveRecord::Base
validates_presence_of :name, :ingredients, :made_by
validates_numericality_of :serves, :only_integer => true
validates_uniqueness_of :name

  after_save :send_recipes

  def send_recipes
     logger.info "******************Going to send recipes #{name}"
     if published?
	     User.find_by_newsletter(true).each do |user|
	      	RecipeMailer.send_recipe( id,user ).deliver
	 	 end
     end 
  end 
end
