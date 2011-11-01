require 'test_helper'

class HowuknowusControllerTest < ActionController::TestCase
  setup do
    @howuknowu = howuknowus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:howuknowus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create howuknowu" do
    assert_difference('Howuknowu.count') do
      post :create, :howuknowu => @howuknowu.attributes
    end

    assert_redirected_to howuknowu_path(assigns(:howuknowu))
  end

  test "should show howuknowu" do
    get :show, :id => @howuknowu.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @howuknowu.to_param
    assert_response :success
  end

  test "should update howuknowu" do
    put :update, :id => @howuknowu.to_param, :howuknowu => @howuknowu.attributes
    assert_redirected_to howuknowu_path(assigns(:howuknowu))
  end

  test "should destroy howuknowu" do
    assert_difference('Howuknowu.count', -1) do
      delete :destroy, :id => @howuknowu.to_param
    end

    assert_redirected_to howuknowus_path
  end
end
