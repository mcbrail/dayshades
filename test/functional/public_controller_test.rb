require 'test_helper'

class PublicControllerTest < ActionController::TestCase
<<<<<<< HEAD
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get instructions" do
    get :instructions
=======
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get contact" do
    get :contact
>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

<<<<<<< HEAD
  test "should get products" do
    get :products
=======
  test "should get instructions" do
    get :instructions
>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
    assert_response :success
  end

end
