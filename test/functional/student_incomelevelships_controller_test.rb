require 'test_helper'

class StudentIncomelevelshipsControllerTest < ActionController::TestCase
  setup do
    @student_incomelevelship = student_incomelevelships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_incomelevelships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_incomelevelship" do
    assert_difference('StudentIncomelevelship.count') do
      post :create, :student_incomelevelship => @student_incomelevelship.attributes
    end

    assert_redirected_to student_incomelevelship_path(assigns(:student_incomelevelship))
  end

  test "should show student_incomelevelship" do
    get :show, :id => @student_incomelevelship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student_incomelevelship.to_param
    assert_response :success
  end

  test "should update student_incomelevelship" do
    put :update, :id => @student_incomelevelship.to_param, :student_incomelevelship => @student_incomelevelship.attributes
    assert_redirected_to student_incomelevelship_path(assigns(:student_incomelevelship))
  end

  test "should destroy student_incomelevelship" do
    assert_difference('StudentIncomelevelship.count', -1) do
      delete :destroy, :id => @student_incomelevelship.to_param
    end

    assert_redirected_to student_incomelevelships_path
  end
end
