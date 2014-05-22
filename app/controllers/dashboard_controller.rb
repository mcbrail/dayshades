class DashboardController < ApplicationController
  def index
  	@categories = Category.all
  	@total_category = @categories.count
  end
end
