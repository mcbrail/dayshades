class CategoriesController < ApplicationController
  def edit
  	@category = Category.new
  	@categories = Category.find(params[:id])
  end

  def new
  	
  end

  def show

  	
  end

  def create
  	@category = Category.new(params[:category])
  		if @category.save
        		flash[:notice]='Category information has been saved'
  				redirect_to action: "index"
  			else
  				
        		flash[:notice]='Error :Could not save category on the database, Fill in all Fields'
        		redirect_to action: "index"
  		end
  end

  def index
  	@category = Category.new
  	@categories = Category.all
  end
end
