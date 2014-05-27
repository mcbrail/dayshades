class CategoriesController < ApplicationController
<<<<<<< HEAD
  
  def edit
=======
   def edit
>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
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
<<<<<<< HEAD
end
=======
end
>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
