class CategoriesController < ApplicationController
   def edit
  	@category = Category.find(params[:id])
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
  end

  def create
  	@category = Category.new(params[:category])
  		if @category.save
        		flash[:notice]='Category information has been saved'
  				redirect_to categories_path 
  			else
  				
        		flash[:notice]='Error :Could not save category on the database, Fill in all Fields'
        		redirect_to categories_new_path
  		end
  end

  def update 
    @category = Category.find(params[:id])
      if @category.update_attributes(params[:category]) 
          redirect_to categories_path, :notice => "Updated category successfully"
      else
          redirect_to categories_edit_path, :notice => "Unable to update details"
      end
  end

  def destroy
    @category = Category.find(params[:id])
      if @category.destroy
          redirect_to categories_path, :notice => "Category has been deleted"
        else
          redirect_to categories_path, :notice => "Could not delete category"
      end
  end

  def index
  	@categories = Category.all
    
  end
end