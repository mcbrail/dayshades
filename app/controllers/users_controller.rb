class UsersController < ApplicationController
  def index
  	@user = User.new
  	@users = User.all
  end

   def create
  	@user = User.new(params[:User])
  		if @user.save
        		flash[:notice]='Customer has been added'
  				redirect_to users_index_path
  			else
  				
        		flash[:notice]='Errors :
        		                       Could not save customer on the database, Fill in all Fields
        		                       '
        		redirect_to users_index_path
  		end
  end

  def new
  end

  def edit
  end

  def show
  end
end
