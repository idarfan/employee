require 'test_helper'

class BeeeothersControllerTest < ActionController::TestCase
  setup do
    @beeeother = beeeothers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beeeothers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beeeother" do
    assert_difference('Beeeother.count') do
      post :create, :beeeother => @beeeother.attributes
    end

    assert_redirected_to beeeother_path(assigns(:beeeother))
  end

  test "should show beeeother" do
    get :show, :id => @beeeother.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @beeeother.to_param
    assert_response :success
  end

  test "should update beeeother" do
    put :update, :id => @beeeother.to_param, :beeeother => @beeeother.attributes
    assert_redirected_to beeeother_path(assigns(:beeeother))
  end

  test "should destroy beeeother" do
    assert_difference('Beeeother.count', -1) do
      delete :destroy, :id => @beeeother.to_param
    end

    assert_redirected_to beeeothers_path
  end
end
