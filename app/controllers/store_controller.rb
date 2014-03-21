class StoreController < ApplicationController
  def index
 @recipes = Recipe.order("created_at DESC").paginate(:page => params[:page], :per_page => 3)

respond_to do |format|
      format.html
      format.json { render json: @recipes }
      format.xml { render xml: @recipes }
    end

  end

  def show
     @recipe = Recipe.find(params[:id])
  end
end
