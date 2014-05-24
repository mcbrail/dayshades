class PublicController < ApplicationController

  def add_to_cart
    product = Product.find(params[:id])
    @cart = Cart.new
    @cart.add_product(product)
    redirect_to(:action => 'show_cart')
  end

  def home
    @categories = Category.all
  end

  def contact
  end

  def instructions
  end

  def about
  end

  def products
    @products = Product.all

  end

  def index
    @product = Product.find(params[:id])
  end

  def show
    @product = Product.find(params[:id])
  end
end
