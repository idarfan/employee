require 'test_helper'

class StudentinfoHowucanimproveshipsControllerTest < ActionController::TestCase
  setup do
    @studentinfo_howucanimproveship = studentinfo_howucanimproveships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studentinfo_howucanimproveships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studentinfo_howucanimproveship" do
    assert_difference('StudentinfoHowucanimproveship.count') do
      post :create, :studentinfo_howucanimproveship => @studentinfo_howucanimproveship.attributes
    end

    assert_redirected_to studentinfo_howucanimproveship_path(assigns(:studentinfo_howucanimproveship))
  end

  test "should show studentinfo_howucanimproveship" do
    get :show, :id => @studentinfo_howucanimproveship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @studentinfo_howucanimproveship.to_param
    assert_response :success
  end

  test "should update studentinfo_howucanimproveship" do
    put :update, :id => @studentinfo_howucanimproveship.to_param, :studentinfo_howucanimproveship => @studentinfo_howucanimproveship.attributes
    assert_redirected_to studentinfo_howucanimproveship_path(assigns(:studentinfo_howucanimproveship))
  end

  test "should destroy studentinfo_howucanimproveship" do
    assert_difference('StudentinfoHowucanimproveship.count', -1) do
      delete :destroy, :id => @studentinfo_howucanimproveship.to_param
    end

    assert_redirected_to studentinfo_howucanimproveships_path
  end
end
