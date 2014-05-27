class DashboardController < ApplicationController
  def index
  	@categories = Category.all
  	@products = Product.all.count
  	@total_category = @categories.count
  	@pro = Product.all
<<<<<<< HEAD
  	
  	
  	

=======
>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
  end
end
