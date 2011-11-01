require 'test_helper'

class StudentGraduatedshipsControllerTest < ActionController::TestCase
  setup do
    @student_graduatedship = student_graduatedships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_graduatedships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_graduatedship" do
    assert_difference('StudentGraduatedship.count') do
      post :create, :student_graduatedship => @student_graduatedship.attributes
    end

    assert_redirected_to student_graduatedship_path(assigns(:student_graduatedship))
  end

  test "should show student_graduatedship" do
    get :show, :id => @student_graduatedship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student_graduatedship.to_param
    assert_response :success
  end

  test "should update student_graduatedship" do
    put :update, :id => @student_graduatedship.to_param, :student_graduatedship => @student_graduatedship.attributes
    assert_redirected_to student_graduatedship_path(assigns(:student_graduatedship))
  end

  test "should destroy student_graduatedship" do
    assert_difference('StudentGraduatedship.count', -1) do
      delete :destroy, :id => @student_graduatedship.to_param
    end

    assert_redirected_to student_graduatedships_path
  end
end
