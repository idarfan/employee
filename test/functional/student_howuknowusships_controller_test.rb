require 'test_helper'

class StudentHowuknowusshipsControllerTest < ActionController::TestCase
  setup do
    @student_howuknowusship = student_howuknowusships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_howuknowusships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_howuknowusship" do
    assert_difference('StudentHowuknowusship.count') do
      post :create, :student_howuknowusship => @student_howuknowusship.attributes
    end

    assert_redirected_to student_howuknowusship_path(assigns(:student_howuknowusship))
  end

  test "should show student_howuknowusship" do
    get :show, :id => @student_howuknowusship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student_howuknowusship.to_param
    assert_response :success
  end

  test "should update student_howuknowusship" do
    put :update, :id => @student_howuknowusship.to_param, :student_howuknowusship => @student_howuknowusship.attributes
    assert_redirected_to student_howuknowusship_path(assigns(:student_howuknowusship))
  end

  test "should destroy student_howuknowusship" do
    assert_difference('StudentHowuknowusship.count', -1) do
      delete :destroy, :id => @student_howuknowusship.to_param
    end

    assert_redirected_to student_howuknowusships_path
  end
end
