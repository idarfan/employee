require 'test_helper'

class StudentMostneedshipsControllerTest < ActionController::TestCase
  setup do
    @student_mostneedship = student_mostneedships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_mostneedships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_mostneedship" do
    assert_difference('StudentMostneedship.count') do
      post :create, :student_mostneedship => @student_mostneedship.attributes
    end

    assert_redirected_to student_mostneedship_path(assigns(:student_mostneedship))
  end

  test "should show student_mostneedship" do
    get :show, :id => @student_mostneedship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student_mostneedship.to_param
    assert_response :success
  end

  test "should update student_mostneedship" do
    put :update, :id => @student_mostneedship.to_param, :student_mostneedship => @student_mostneedship.attributes
    assert_redirected_to student_mostneedship_path(assigns(:student_mostneedship))
  end

  test "should destroy student_mostneedship" do
    assert_difference('StudentMostneedship.count', -1) do
      delete :destroy, :id => @student_mostneedship.to_param
    end

    assert_redirected_to student_mostneedships_path
  end
end
