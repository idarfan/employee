require 'test_helper'

class GraduatedsControllerTest < ActionController::TestCase
  setup do
    @graduated = graduateds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graduateds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graduated" do
    assert_difference('Graduated.count') do
      post :create, :graduated => @graduated.attributes
    end

    assert_redirected_to graduated_path(assigns(:graduated))
  end

  test "should show graduated" do
    get :show, :id => @graduated.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @graduated.to_param
    assert_response :success
  end

  test "should update graduated" do
    put :update, :id => @graduated.to_param, :graduated => @graduated.attributes
    assert_redirected_to graduated_path(assigns(:graduated))
  end

  test "should destroy graduated" do
    assert_difference('Graduated.count', -1) do
      delete :destroy, :id => @graduated.to_param
    end

    assert_redirected_to graduateds_path
  end
end
