require 'test_helper'

class StudentinfoMostneedshipsControllerTest < ActionController::TestCase
  setup do
    @studentinfo_mostneedship = studentinfo_mostneedships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studentinfo_mostneedships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studentinfo_mostneedship" do
    assert_difference('StudentinfoMostneedship.count') do
      post :create, :studentinfo_mostneedship => @studentinfo_mostneedship.attributes
    end

    assert_redirected_to studentinfo_mostneedship_path(assigns(:studentinfo_mostneedship))
  end

  test "should show studentinfo_mostneedship" do
    get :show, :id => @studentinfo_mostneedship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @studentinfo_mostneedship.to_param
    assert_response :success
  end

  test "should update studentinfo_mostneedship" do
    put :update, :id => @studentinfo_mostneedship.to_param, :studentinfo_mostneedship => @studentinfo_mostneedship.attributes
    assert_redirected_to studentinfo_mostneedship_path(assigns(:studentinfo_mostneedship))
  end

  test "should destroy studentinfo_mostneedship" do
    assert_difference('StudentinfoMostneedship.count', -1) do
      delete :destroy, :id => @studentinfo_mostneedship.to_param
    end

    assert_redirected_to studentinfo_mostneedships_path
  end
end
