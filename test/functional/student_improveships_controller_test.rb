require 'test_helper'

class StudentImproveshipsControllerTest < ActionController::TestCase
  setup do
    @student_improveship = student_improveships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_improveships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_improveship" do
    assert_difference('StudentImproveship.count') do
      post :create, :student_improveship => @student_improveship.attributes
    end

    assert_redirected_to student_improveship_path(assigns(:student_improveship))
  end

  test "should show student_improveship" do
    get :show, :id => @student_improveship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student_improveship.to_param
    assert_response :success
  end

  test "should update student_improveship" do
    put :update, :id => @student_improveship.to_param, :student_improveship => @student_improveship.attributes
    assert_redirected_to student_improveship_path(assigns(:student_improveship))
  end

  test "should destroy student_improveship" do
    assert_difference('StudentImproveship.count', -1) do
      delete :destroy, :id => @student_improveship.to_param
    end

    assert_redirected_to student_improveships_path
  end
end
