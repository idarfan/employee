require 'test_helper'

class StudentBeen2othershipsControllerTest < ActionController::TestCase
  setup do
    @student_been2othership = student_been2otherships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_been2otherships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_been2othership" do
    assert_difference('StudentBeen2othership.count') do
      post :create, :student_been2othership => @student_been2othership.attributes
    end

    assert_redirected_to student_been2othership_path(assigns(:student_been2othership))
  end

  test "should show student_been2othership" do
    get :show, :id => @student_been2othership.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student_been2othership.to_param
    assert_response :success
  end

  test "should update student_been2othership" do
    put :update, :id => @student_been2othership.to_param, :student_been2othership => @student_been2othership.attributes
    assert_redirected_to student_been2othership_path(assigns(:student_been2othership))
  end

  test "should destroy student_been2othership" do
    assert_difference('StudentBeen2othership.count', -1) do
      delete :destroy, :id => @student_been2othership.to_param
    end

    assert_redirected_to student_been2otherships_path
  end
end
