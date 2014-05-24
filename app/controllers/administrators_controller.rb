class AdministratorsController < ApplicationController
  def index

  	@products = Product.find_by_sql("SELECT * FROM PRODUCTS")
  	@categories = Category.find_by_sql("SELECT name, description FROM CATEGORIES")



  	#@products_category.find_by_sql("select @categories.name, @products.code, @products.color, @products.fabric
  	#@products.price, from products, categories where @categories.id = @products.category_id")
  end

  def new
  	@admin = Administrator.new
  	@admins = Administrator.all
  end

  def create
  	@admin = Administrator.new(params[:administrator])
  		if @admin.save
        		flash[:notice]='Administrator has been added'
  				redirect_to administrators_new_path
  			else
  				
        		flash[:notice]='Errors :
        		                       Could not save admin on the database, Fill in all Fields
        		                       '
        		redirect_to administrators_new_path
  		end
  end

  def show
  	@admin = Administrator.find(params[:id])
  	@admins = Administrator.all
  end

  def edit
  	@admin = Administrator.find(params[:id])
  	#@admins = Administrator.all
  end

  def update 
  	@admin = Administrator.find(params[:id])
	if @admin.update_attributes(params[:administrator]) 
		redirect_to administrators_new_path, :notice => "Updated Details successfully"
	else
		redirect_to administrators_edit_path, :notice => "Unable to update details"
	end
  end

  def destroy
  	@admin = Administrator.find(params[:id])
  		@admin.destroy
  		redirect_to administrators_new_path, :notice => "Administrator has been deleted"
  end

  def login
  	@admin = Admin.new
  end
end
