require 'test_helper'

class FrequentmagsControllerTest < ActionController::TestCase
  setup do
    @frequentmag = frequentmags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frequentmags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frequentmag" do
    assert_difference('Frequentmag.count') do
      post :create, :frequentmag => @frequentmag.attributes
    end

    assert_redirected_to frequentmag_path(assigns(:frequentmag))
  end

  test "should show frequentmag" do
    get :show, :id => @frequentmag.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @frequentmag.to_param
    assert_response :success
  end

  test "should update frequentmag" do
    put :update, :id => @frequentmag.to_param, :frequentmag => @frequentmag.attributes
    assert_redirected_to frequentmag_path(assigns(:frequentmag))
  end

  test "should destroy frequentmag" do
    assert_difference('Frequentmag.count', -1) do
      delete :destroy, :id => @frequentmag.to_param
    end

    assert_redirected_to frequentmags_path
  end
end
