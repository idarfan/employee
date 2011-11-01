require 'test_helper'

class StudentNoticeshipsControllerTest < ActionController::TestCase
  setup do
    @student_noticeship = student_noticeships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_noticeships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_noticeship" do
    assert_difference('StudentNoticeship.count') do
      post :create, :student_noticeship => @student_noticeship.attributes
    end

    assert_redirected_to student_noticeship_path(assigns(:student_noticeship))
  end

  test "should show student_noticeship" do
    get :show, :id => @student_noticeship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student_noticeship.to_param
    assert_response :success
  end

  test "should update student_noticeship" do
    put :update, :id => @student_noticeship.to_param, :student_noticeship => @student_noticeship.attributes
    assert_redirected_to student_noticeship_path(assigns(:student_noticeship))
  end

  test "should destroy student_noticeship" do
    assert_difference('StudentNoticeship.count', -1) do
      delete :destroy, :id => @student_noticeship.to_param
    end

    assert_redirected_to student_noticeships_path
  end
end
