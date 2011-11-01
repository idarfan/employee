require 'test_helper'

class HowucanimprovesControllerTest < ActionController::TestCase
  setup do
    @howucanimprofe = howucanimproves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:howucanimproves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create howucanimprofe" do
    assert_difference('Howucanimprove.count') do
      post :create, :howucanimprofe => @howucanimprofe.attributes
    end

    assert_redirected_to howucanimprofe_path(assigns(:howucanimprofe))
  end

  test "should show howucanimprofe" do
    get :show, :id => @howucanimprofe.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @howucanimprofe.to_param
    assert_response :success
  end

  test "should update howucanimprofe" do
    put :update, :id => @howucanimprofe.to_param, :howucanimprofe => @howucanimprofe.attributes
    assert_redirected_to howucanimprofe_path(assigns(:howucanimprofe))
  end

  test "should destroy howucanimprofe" do
    assert_difference('Howucanimprove.count', -1) do
      delete :destroy, :id => @howucanimprofe.to_param
    end

    assert_redirected_to howucanimproves_path
  end
end
