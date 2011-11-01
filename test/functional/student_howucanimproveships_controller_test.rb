require 'test_helper'

class StudentHowucanimproveshipsControllerTest < ActionController::TestCase
  setup do
    @student_howucanimproveship = student_howucanimproveships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_howucanimproveships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_howucanimproveship" do
    assert_difference('StudentHowucanimproveship.count') do
      post :create, :student_howucanimproveship => @student_howucanimproveship.attributes
    end

    assert_redirected_to student_howucanimproveship_path(assigns(:student_howucanimproveship))
  end

  test "should show student_howucanimproveship" do
    get :show, :id => @student_howucanimproveship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student_howucanimproveship.to_param
    assert_response :success
  end

  test "should update student_howucanimproveship" do
    put :update, :id => @student_howucanimproveship.to_param, :student_howucanimproveship => @student_howucanimproveship.attributes
    assert_redirected_to student_howucanimproveship_path(assigns(:student_howucanimproveship))
  end

  test "should destroy student_howucanimproveship" do
    assert_difference('StudentHowucanimproveship.count', -1) do
      delete :destroy, :id => @student_howucanimproveship.to_param
    end

    assert_redirected_to student_howucanimproveships_path
  end
end
