require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
<<<<<<< HEAD
    assert_not_nil assigns(:customers)
=======
>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
  end

  test "should get new" do
    get :new
    assert_response :success
  end

<<<<<<< HEAD
  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { name: @customer.name, password: @customer.password, confirm_password: @customer.confirm_password}
    end

  test "should update customer" do
    put :create, customer: { name: @customer.name, password: @customer.password, confirm_password: @customer.confirm_password}
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should get show" do
    get :show, id: @customer
    assert_response :success
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path

=======
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
end
