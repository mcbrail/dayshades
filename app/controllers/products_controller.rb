class ProductsController < ApplicationController
  def index
  	@product = Product.new
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

  def new
  end

  def edit
  end

  def show
  end
end
