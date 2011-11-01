require 'test_helper'

class MostneedsControllerTest < ActionController::TestCase
  setup do
    @mostneed = mostneeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mostneeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mostneed" do
    assert_difference('Mostneed.count') do
      post :create, :mostneed => @mostneed.attributes
    end

    assert_redirected_to mostneed_path(assigns(:mostneed))
  end

  test "should show mostneed" do
    get :show, :id => @mostneed.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mostneed.to_param
    assert_response :success
  end

  test "should update mostneed" do
    put :update, :id => @mostneed.to_param, :mostneed => @mostneed.attributes
    assert_redirected_to mostneed_path(assigns(:mostneed))
  end

  test "should destroy mostneed" do
    assert_difference('Mostneed.count', -1) do
      delete :destroy, :id => @mostneed.to_param
    end

    assert_redirected_to mostneeds_path
  end
end
