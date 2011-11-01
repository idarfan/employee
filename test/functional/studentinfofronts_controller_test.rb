require 'test_helper'

class StudentinfofrontsControllerTest < ActionController::TestCase
  setup do
    @studentinfofront = studentinfofronts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studentinfofronts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studentinfofront" do
    assert_difference('Studentinfofront.count') do
      post :create, :studentinfofront => @studentinfofront.attributes
    end

    assert_redirected_to studentinfofront_path(assigns(:studentinfofront))
  end

  test "should show studentinfofront" do
    get :show, :id => @studentinfofront.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @studentinfofront.to_param
    assert_response :success
  end

  test "should update studentinfofront" do
    put :update, :id => @studentinfofront.to_param, :studentinfofront => @studentinfofront.attributes
    assert_redirected_to studentinfofront_path(assigns(:studentinfofront))
  end

  test "should destroy studentinfofront" do
    assert_difference('Studentinfofront.count', -1) do
      delete :destroy, :id => @studentinfofront.to_param
    end

    assert_redirected_to studentinfofronts_path
  end
end
