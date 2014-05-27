require 'test_helper'

class UsersControllerTest < ActionController::TestCase
<<<<<<< HEAD
  setup do
    #@user = users(:one)
    @input_attributes = {
       :name => "Lebo" ,
       :password => "private" ,
       :password_confirmation => "private"
    }
@user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
=======
  test "should get index" do
    get :index
    assert_response :success
>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
  end

  test "should get new" do
    get :new
    assert_response :success
  end

<<<<<<< HEAD
  test "should create user" do
    assert_difference('User.count') do
      #post :create, user: {  }
      post :create, :user => @input_attributes
    end

    #assert_redirected_to user_path(assigns(:user))
    assert_redirected_to users_path
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    #put :update, id: @user, user: {  }
    #assert_redirected_to user_path(assigns(:user))
    put :update, :id => @user.to_param, :user => @input_attributes
    assert_redirected_to users_path
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
=======
  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
end
