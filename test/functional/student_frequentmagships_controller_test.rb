require 'test_helper'

class StudentFrequentmagshipsControllerTest < ActionController::TestCase
  setup do
    @student_frequentmagship = student_frequentmagships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_frequentmagships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_frequentmagship" do
    assert_difference('StudentFrequentmagship.count') do
      post :create, :student_frequentmagship => @student_frequentmagship.attributes
    end

    assert_redirected_to student_frequentmagship_path(assigns(:student_frequentmagship))
  end

  test "should show student_frequentmagship" do
    get :show, :id => @student_frequentmagship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student_frequentmagship.to_param
    assert_response :success
  end

  test "should update student_frequentmagship" do
    put :update, :id => @student_frequentmagship.to_param, :student_frequentmagship => @student_frequentmagship.attributes
    assert_redirected_to student_frequentmagship_path(assigns(:student_frequentmagship))
  end

  test "should destroy student_frequentmagship" do
    assert_difference('StudentFrequentmagship.count', -1) do
      delete :destroy, :id => @student_frequentmagship.to_param
    end

    assert_redirected_to student_frequentmagships_path
  end
end
