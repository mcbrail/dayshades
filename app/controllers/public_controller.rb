class PublicController < ApplicationController
<<<<<<< HEAD

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

=======
>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
  def list
    @products = Product.all
    @categories = Category.all
  end

  def index
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
    @categories = Category.all
  end
<<<<<<< HEAD
=======

  def contact
  end

  def about
  end

  def instructions
  end
>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
end
