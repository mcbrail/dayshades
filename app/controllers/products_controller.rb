class ProductsController < ApplicationController
  def index
  	
  	@categories = Category.all
  	@products = Product.all
  end

  def create
  	@product = Product.new(params[:product])
  		if @product.save

        		flash[:notice]='Product information has been saved'
        		flash[:status] = true
  				redirect_to action: "index"
  			else
  				
        		flash[:notice]='Error : Could not save product in the database'
        		flash[:status] = false
        		redirect_to action: "index"
  		end
  end

  def update
    @product = Product.find(params[:id])
      if @admin.update_attributes(params[:product])
            redirect_to product_new_path, :notice => "Updated Details successfully"
        else
          
           redirect_to product_edit_path, :notice => "Unable to update details"
      end
  end

  def new
    @product = Product.new
    @products = Product.all
    @categories = Category.all
  end

  def destroy
    @product = Product.find(params[:id])
      @product.destroy
      redirect_to products_path, :notice => "Product has been deleted"
  end

  def edit
    @product = Product.find(params[:id])
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @categories = Category.all
  end
end
