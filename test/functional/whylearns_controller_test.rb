require 'test_helper'

class WhylearnsControllerTest < ActionController::TestCase
  setup do
    @whylearn = whylearns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whylearns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create whylearn" do
    assert_difference('Whylearn.count') do
      post :create, :whylearn => @whylearn.attributes
    end

    assert_redirected_to whylearn_path(assigns(:whylearn))
  end

  test "should show whylearn" do
    get :show, :id => @whylearn.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @whylearn.to_param
    assert_response :success
  end

  test "should update whylearn" do
    put :update, :id => @whylearn.to_param, :whylearn => @whylearn.attributes
    assert_redirected_to whylearn_path(assigns(:whylearn))
  end

  test "should destroy whylearn" do
    assert_difference('Whylearn.count', -1) do
      delete :destroy, :id => @whylearn.to_param
    end

    assert_redirected_to whylearns_path
  end
end
