require 'test_helper'

class AdministratorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

<<<<<<< HEAD
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get edit" do
    get :edit
=======
  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get show" do
    get :show
>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
    assert_response :success
  end

end
