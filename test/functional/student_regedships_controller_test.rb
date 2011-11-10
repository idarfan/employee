require 'test_helper'

class StudentRegedshipsControllerTest < ActionController::TestCase
  setup do
    @student_regedship = student_regedships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_regedships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_regedship" do
    assert_difference('StudentRegedship.count') do
      post :create, :student_regedship => @student_regedship.attributes
    end

    assert_redirected_to student_regedship_path(assigns(:student_regedship))
  end

  test "should show student_regedship" do
    get :show, :id => @student_regedship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student_regedship.to_param
    assert_response :success
  end

  test "should update student_regedship" do
    put :update, :id => @student_regedship.to_param, :student_regedship => @student_regedship.attributes
    assert_redirected_to student_regedship_path(assigns(:student_regedship))
  end

  test "should destroy student_regedship" do
    assert_difference('StudentRegedship.count', -1) do
      delete :destroy, :id => @student_regedship.to_param
    end

    assert_redirected_to student_regedships_path
  end
end
