require 'test_helper'

class StudentWeeklyusageshipsControllerTest < ActionController::TestCase
  setup do
    @student_weeklyusageship = student_weeklyusageships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_weeklyusageships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_weeklyusageship" do
    assert_difference('StudentWeeklyusageship.count') do
      post :create, :student_weeklyusageship => @student_weeklyusageship.attributes
    end

    assert_redirected_to student_weeklyusageship_path(assigns(:student_weeklyusageship))
  end

  test "should show student_weeklyusageship" do
    get :show, :id => @student_weeklyusageship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student_weeklyusageship.to_param
    assert_response :success
  end

  test "should update student_weeklyusageship" do
    put :update, :id => @student_weeklyusageship.to_param, :student_weeklyusageship => @student_weeklyusageship.attributes
    assert_redirected_to student_weeklyusageship_path(assigns(:student_weeklyusageship))
  end

  test "should destroy student_weeklyusageship" do
    assert_difference('StudentWeeklyusageship.count', -1) do
      delete :destroy, :id => @student_weeklyusageship.to_param
    end

    assert_redirected_to student_weeklyusageships_path
  end
end
