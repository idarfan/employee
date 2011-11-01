require 'test_helper'

class StaffloginsControllerTest < ActionController::TestCase
  setup do
    @stafflogin = stafflogins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stafflogins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stafflogin" do
    assert_difference('Stafflogin.count') do
      post :create, :stafflogin => @stafflogin.attributes
    end

    assert_redirected_to stafflogin_path(assigns(:stafflogin))
  end

  test "should show stafflogin" do
    get :show, :id => @stafflogin.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @stafflogin.to_param
    assert_response :success
  end

  test "should update stafflogin" do
    put :update, :id => @stafflogin.to_param, :stafflogin => @stafflogin.attributes
    assert_redirected_to stafflogin_path(assigns(:stafflogin))
  end

  test "should destroy stafflogin" do
    assert_difference('Stafflogin.count', -1) do
      delete :destroy, :id => @stafflogin.to_param
    end

    assert_redirected_to stafflogins_path
  end
end
