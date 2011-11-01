require 'test_helper'

class Been2othersControllerTest < ActionController::TestCase
  setup do
    @been2other = been2others(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:been2others)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create been2other" do
    assert_difference('Been2other.count') do
      post :create, :been2other => @been2other.attributes
    end

    assert_redirected_to been2other_path(assigns(:been2other))
  end

  test "should show been2other" do
    get :show, :id => @been2other.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @been2other.to_param
    assert_response :success
  end

  test "should update been2other" do
    put :update, :id => @been2other.to_param, :been2other => @been2other.attributes
    assert_redirected_to been2other_path(assigns(:been2other))
  end

  test "should destroy been2other" do
    assert_difference('Been2other.count', -1) do
      delete :destroy, :id => @been2other.to_param
    end

    assert_redirected_to been2others_path
  end
end
