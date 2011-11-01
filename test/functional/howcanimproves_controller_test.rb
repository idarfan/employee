require 'test_helper'

class HowcanimprovesControllerTest < ActionController::TestCase
  setup do
    @howcanimprofe = howcanimproves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:howcanimproves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create howcanimprofe" do
    assert_difference('Howcanimprove.count') do
      post :create, :howcanimprofe => @howcanimprofe.attributes
    end

    assert_redirected_to howcanimprofe_path(assigns(:howcanimprofe))
  end

  test "should show howcanimprofe" do
    get :show, :id => @howcanimprofe.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @howcanimprofe.to_param
    assert_response :success
  end

  test "should update howcanimprofe" do
    put :update, :id => @howcanimprofe.to_param, :howcanimprofe => @howcanimprofe.attributes
    assert_redirected_to howcanimprofe_path(assigns(:howcanimprofe))
  end

  test "should destroy howcanimprofe" do
    assert_difference('Howcanimprove.count', -1) do
      delete :destroy, :id => @howcanimprofe.to_param
    end

    assert_redirected_to howcanimproves_path
  end
end
