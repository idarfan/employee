require 'test_helper'

class StudentinfofrontStudentinfoshipsControllerTest < ActionController::TestCase
  setup do
    @studentinfofront_studentinfoship = studentinfofront_studentinfoships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studentinfofront_studentinfoships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studentinfofront_studentinfoship" do
    assert_difference('StudentinfofrontStudentinfoship.count') do
      post :create, :studentinfofront_studentinfoship => @studentinfofront_studentinfoship.attributes
    end

    assert_redirected_to studentinfofront_studentinfoship_path(assigns(:studentinfofront_studentinfoship))
  end

  test "should show studentinfofront_studentinfoship" do
    get :show, :id => @studentinfofront_studentinfoship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @studentinfofront_studentinfoship.to_param
    assert_response :success
  end

  test "should update studentinfofront_studentinfoship" do
    put :update, :id => @studentinfofront_studentinfoship.to_param, :studentinfofront_studentinfoship => @studentinfofront_studentinfoship.attributes
    assert_redirected_to studentinfofront_studentinfoship_path(assigns(:studentinfofront_studentinfoship))
  end

  test "should destroy studentinfofront_studentinfoship" do
    assert_difference('StudentinfofrontStudentinfoship.count', -1) do
      delete :destroy, :id => @studentinfofront_studentinfoship.to_param
    end

    assert_redirected_to studentinfofront_studentinfoships_path
  end
end
