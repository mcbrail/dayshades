class CustomersController < ApplicationController
  def index
    @customers = Customer.all
<<<<<<< HEAD

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customers }
    end
  end

  def new
    @customer = Customer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer }
    end
  end

   def create
    @customer = Customer.new(params[:customer])

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render json: @customer, status: :created, location: @customer }
      else
        format.html { render action: "new" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

   def edit
    @customer = Customer.find(params[:id])
  end

  def show
    @customer = Customer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer }
    end
  end

  def update
    @customer = Customer.find(params[:id])

    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to customers_url }
      format.json { head :no_content }
    end
  end
=======
    @customer = Customer.new
  	#@products_category.find_by_sql("select @categories.name, @products.code, @products.color, @products.fabric
  	#@products.price, from products, categories where @categories.id = @products.category_id")
  end

  def new
  	@customer = Customer.new
    @customers = Customer.all
  end

  def create
  	@customer = Customer.new(params[:administrator])
  		if @customer.save
        		flash[:notice]='Customer has been added'
  				redirect_to customers_index_path
  			else
  				
        		flash[:notice]='Errors :
        		                       Could not save customer on the database, Fill in all Fields
        		                       '
        		redirect_to customers_index_path
  		end
  end

  def show
  	@admin = Customer.find(params[:id])
  	@admins = Customer.all
  end

  def edit
  	@customer = Customer.find(params[:id])
  	#@admins = Administrator.all
  end

  def update 
  	@customer = Customer.find(params[:id])
	if @customer.update_attributes(params[:administrator]) 
		redirect_to customers_index_path, :notice => "Updated Details successfully"
	else
		redirect_to customers_edit_path, :notice => "Unable to update details"
	end
  end

  def destroy
  	@admin = Customer.find(params[:id])
  		@admin.destroy
  		redirect_to administrators_new_path, :notice => "Administrator has been deleted"
  end

  
>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
end
