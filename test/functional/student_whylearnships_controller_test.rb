require 'test_helper'

class StudentWhylearnshipsControllerTest < ActionController::TestCase
  setup do
    @student_whylearnship = student_whylearnships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_whylearnships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_whylearnship" do
    assert_difference('StudentWhylearnship.count') do
      post :create, :student_whylearnship => @student_whylearnship.attributes
    end

    assert_redirected_to student_whylearnship_path(assigns(:student_whylearnship))
  end

  test "should show student_whylearnship" do
    get :show, :id => @student_whylearnship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student_whylearnship.to_param
    assert_response :success
  end

  test "should update student_whylearnship" do
    put :update, :id => @student_whylearnship.to_param, :student_whylearnship => @student_whylearnship.attributes
    assert_redirected_to student_whylearnship_path(assigns(:student_whylearnship))
  end

  test "should destroy student_whylearnship" do
    assert_difference('StudentWhylearnship.count', -1) do
      delete :destroy, :id => @student_whylearnship.to_param
    end

    assert_redirected_to student_whylearnships_path
  end
end
