class PublicController < ApplicationController



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
    @all_products = Product.all
  end

  def show
  end
end
