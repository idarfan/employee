require 'test_helper'

class StudentinfoWhyLearnshipsControllerTest < ActionController::TestCase
  setup do
    @studentinfo_why_learnship = studentinfo_why_learnships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studentinfo_why_learnships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studentinfo_why_learnship" do
    assert_difference('StudentinfoWhyLearnship.count') do
      post :create, :studentinfo_why_learnship => @studentinfo_why_learnship.attributes
    end

    assert_redirected_to studentinfo_why_learnship_path(assigns(:studentinfo_why_learnship))
  end

  test "should show studentinfo_why_learnship" do
    get :show, :id => @studentinfo_why_learnship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @studentinfo_why_learnship.to_param
    assert_response :success
  end

  test "should update studentinfo_why_learnship" do
    put :update, :id => @studentinfo_why_learnship.to_param, :studentinfo_why_learnship => @studentinfo_why_learnship.attributes
    assert_redirected_to studentinfo_why_learnship_path(assigns(:studentinfo_why_learnship))
  end

  test "should destroy studentinfo_why_learnship" do
    assert_difference('StudentinfoWhyLearnship.count', -1) do
      delete :destroy, :id => @studentinfo_why_learnship.to_param
    end

    assert_redirected_to studentinfo_why_learnships_path
  end
end
