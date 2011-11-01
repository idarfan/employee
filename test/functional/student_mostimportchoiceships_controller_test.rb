require 'test_helper'

class StudentMostimportchoiceshipsControllerTest < ActionController::TestCase
  setup do
    @student_mostimportchoiceship = student_mostimportchoiceships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_mostimportchoiceships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_mostimportchoiceship" do
    assert_difference('StudentMostimportchoiceship.count') do
      post :create, :student_mostimportchoiceship => @student_mostimportchoiceship.attributes
    end

    assert_redirected_to student_mostimportchoiceship_path(assigns(:student_mostimportchoiceship))
  end

  test "should show student_mostimportchoiceship" do
    get :show, :id => @student_mostimportchoiceship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student_mostimportchoiceship.to_param
    assert_response :success
  end

  test "should update student_mostimportchoiceship" do
    put :update, :id => @student_mostimportchoiceship.to_param, :student_mostimportchoiceship => @student_mostimportchoiceship.attributes
    assert_redirected_to student_mostimportchoiceship_path(assigns(:student_mostimportchoiceship))
  end

  test "should destroy student_mostimportchoiceship" do
    assert_difference('StudentMostimportchoiceship.count', -1) do
      delete :destroy, :id => @student_mostimportchoiceship.to_param
    end

    assert_redirected_to student_mostimportchoiceships_path
  end
end
