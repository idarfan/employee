require 'test_helper'

class StudentHowcanimproveshipsControllerTest < ActionController::TestCase
  setup do
    @student_howcanimproveship = student_howcanimproveships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_howcanimproveships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_howcanimproveship" do
    assert_difference('StudentHowcanimproveship.count') do
      post :create, :student_howcanimproveship => @student_howcanimproveship.attributes
    end

    assert_redirected_to student_howcanimproveship_path(assigns(:student_howcanimproveship))
  end

  test "should show student_howcanimproveship" do
    get :show, :id => @student_howcanimproveship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student_howcanimproveship.to_param
    assert_response :success
  end

  test "should update student_howcanimproveship" do
    put :update, :id => @student_howcanimproveship.to_param, :student_howcanimproveship => @student_howcanimproveship.attributes
    assert_redirected_to student_howcanimproveship_path(assigns(:student_howcanimproveship))
  end

  test "should destroy student_howcanimproveship" do
    assert_difference('StudentHowcanimproveship.count', -1) do
      delete :destroy, :id => @student_howcanimproveship.to_param
    end

    assert_redirected_to student_howcanimproveships_path
  end
end
