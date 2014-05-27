class PublicController < ApplicationController
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

  def contact
  end

  def about
  end

  def instructions
  end
end
