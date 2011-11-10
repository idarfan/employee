require 'test_helper'

class RegedsControllerTest < ActionController::TestCase
  setup do
    @reged = regeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reged" do
    assert_difference('Reged.count') do
      post :create, :reged => @reged.attributes
    end

    assert_redirected_to reged_path(assigns(:reged))
  end

  test "should show reged" do
    get :show, :id => @reged.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @reged.to_param
    assert_response :success
  end

  test "should update reged" do
    put :update, :id => @reged.to_param, :reged => @reged.attributes
    assert_redirected_to reged_path(assigns(:reged))
  end

  test "should destroy reged" do
    assert_difference('Reged.count', -1) do
      delete :destroy, :id => @reged.to_param
    end

    assert_redirected_to regeds_path
  end
end
