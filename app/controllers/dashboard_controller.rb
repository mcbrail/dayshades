class DashboardController < ApplicationController
  def index
  	@categories = Category.all
  	@products = Product.all.count
  	@total_category = @categories.count


  	@pro = Product.all
  	
  end
end
