require 'test_helper'

class WeeklyusagesControllerTest < ActionController::TestCase
  setup do
    @weeklyusage = weeklyusages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weeklyusages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weeklyusage" do
    assert_difference('Weeklyusage.count') do
      post :create, :weeklyusage => @weeklyusage.attributes
    end

    assert_redirected_to weeklyusage_path(assigns(:weeklyusage))
  end

  test "should show weeklyusage" do
    get :show, :id => @weeklyusage.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @weeklyusage.to_param
    assert_response :success
  end

  test "should update weeklyusage" do
    put :update, :id => @weeklyusage.to_param, :weeklyusage => @weeklyusage.attributes
    assert_redirected_to weeklyusage_path(assigns(:weeklyusage))
  end

  test "should destroy weeklyusage" do
    assert_difference('Weeklyusage.count', -1) do
      delete :destroy, :id => @weeklyusage.to_param
    end

    assert_redirected_to weeklyusages_path
  end
end
