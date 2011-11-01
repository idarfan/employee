require 'test_helper'

class StudentinfofrontStudeninfoshipsControllerTest < ActionController::TestCase
  setup do
    @studentinfofront_studeninfoship = studentinfofront_studeninfoships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studentinfofront_studeninfoships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studentinfofront_studeninfoship" do
    assert_difference('StudentinfofrontStudeninfoship.count') do
      post :create, :studentinfofront_studeninfoship => @studentinfofront_studeninfoship.attributes
    end

    assert_redirected_to studentinfofront_studeninfoship_path(assigns(:studentinfofront_studeninfoship))
  end

  test "should show studentinfofront_studeninfoship" do
    get :show, :id => @studentinfofront_studeninfoship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @studentinfofront_studeninfoship.to_param
    assert_response :success
  end

  test "should update studentinfofront_studeninfoship" do
    put :update, :id => @studentinfofront_studeninfoship.to_param, :studentinfofront_studeninfoship => @studentinfofront_studeninfoship.attributes
    assert_redirected_to studentinfofront_studeninfoship_path(assigns(:studentinfofront_studeninfoship))
  end

  test "should destroy studentinfofront_studeninfoship" do
    assert_difference('StudentinfofrontStudeninfoship.count', -1) do
      delete :destroy, :id => @studentinfofront_studeninfoship.to_param
    end

    assert_redirected_to studentinfofront_studeninfoships_path
  end
end
