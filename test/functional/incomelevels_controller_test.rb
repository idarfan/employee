require 'test_helper'

class IncomelevelsControllerTest < ActionController::TestCase
  setup do
    @incomelevel = incomelevels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incomelevels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incomelevel" do
    assert_difference('Incomelevel.count') do
      post :create, :incomelevel => @incomelevel.attributes
    end

    assert_redirected_to incomelevel_path(assigns(:incomelevel))
  end

  test "should show incomelevel" do
    get :show, :id => @incomelevel.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @incomelevel.to_param
    assert_response :success
  end

  test "should update incomelevel" do
    put :update, :id => @incomelevel.to_param, :incomelevel => @incomelevel.attributes
    assert_redirected_to incomelevel_path(assigns(:incomelevel))
  end

  test "should destroy incomelevel" do
    assert_difference('Incomelevel.count', -1) do
      delete :destroy, :id => @incomelevel.to_param
    end

    assert_redirected_to incomelevels_path
  end
end
