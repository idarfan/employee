require 'test_helper'

class StudentinfosControllerTest < ActionController::TestCase
  setup do
    @studentinfo = studentinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studentinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studentinfo" do
    assert_difference('Studentinfo.count') do
      post :create, :studentinfo => @studentinfo.attributes
    end

    assert_redirected_to studentinfo_path(assigns(:studentinfo))
  end

  test "should show studentinfo" do
    get :show, :id => @studentinfo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @studentinfo.to_param
    assert_response :success
  end

  test "should update studentinfo" do
    put :update, :id => @studentinfo.to_param, :studentinfo => @studentinfo.attributes
    assert_redirected_to studentinfo_path(assigns(:studentinfo))
  end

  test "should destroy studentinfo" do
    assert_difference('Studentinfo.count', -1) do
      delete :destroy, :id => @studentinfo.to_param
    end

    assert_redirected_to studentinfos_path
  end
end
