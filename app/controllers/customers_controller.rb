class CustomersController < ApplicationController
  def index
    @customers = Customer.all
    @customer = Customer.new
  	#@products_category.find_by_sql("select @categories.name, @products.code, @products.color, @products.fabric
  	#@products.price, from products, categories where @categories.id = @products.category_id")
  end

  def new
  	@customer = Customer.new
    @customers = Customer.all
  end

  def create
  	@customer = Customer.new(params[:administrator])
  		if @customer.save
        		flash[:notice]='Customer has been added'
  				redirect_to customers_index_path
  			else
  				
        		flash[:notice]='Errors :
        		                       Could not save customer on the database, Fill in all Fields
        		                       '
        		redirect_to customers_index_path
  		end
  end

  def show
  	@admin = Customer.find(params[:id])
  	@admins = Customer.all
  end

  def edit
  	@customer = Customer.find(params[:id])
  	#@admins = Administrator.all
  end

  def update 
  	@customer = Customer.find(params[:id])
	if @customer.update_attributes(params[:administrator]) 
		redirect_to customers_index_path, :notice => "Updated Details successfully"
	else
		redirect_to customers_edit_path, :notice => "Unable to update details"
	end
  end

  def destroy
  	@admin = Customer.find(params[:id])
  		@admin.destroy
  		redirect_to administrators_new_path, :notice => "Administrator has been deleted"
  end

  
end
