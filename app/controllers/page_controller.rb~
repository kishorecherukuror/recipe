class PageController < ApplicationController

   before_filter :setup
def start

  end   

  def home
    @user = params[:users]
    @name = params[:names]
  end

  def about
   @name = params[:name]
   @email = params[:email]
   flash[:error] = ""
  if params[:commit]
   if @name.nil? || @name.empty?
     flash.now[:error] << "Name should not be empty <br />" 
   end
   if @email.nil? || @email.empty?
     flash.now[:error] << "MAil should not be empty"
   end
  end
  
   @age = params[:age]
   @select_producted = params[:product]
   @food = params[:food]
  end

  def products
    @recipess = Recipe.all
    @id = params[:recipe_id]
    if @id.nil?
       @recipes = Recipe.find( @recipess.first.id )
       
    else
    #@id = params[:id]
    @recipes = Recipe.find( @id )
   
    end

end
  # @recipes = Recipe.all.where.not( :serves => 8)
  end

  def services
  end



  def support
    @name = params[:name]
    @age = params[:age]
    @year = params[:year]
  end

  def faq
  end

  def contact_us
  end

  def login
  end
   
  def setup 
     @products = %w{ soap powder paste badams rice nuts pista }
  end 

