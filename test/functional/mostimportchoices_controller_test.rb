require 'test_helper'

class MostimportchoicesControllerTest < ActionController::TestCase
  setup do
    @mostimportchoice = mostimportchoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mostimportchoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mostimportchoice" do
    assert_difference('Mostimportchoice.count') do
      post :create, :mostimportchoice => @mostimportchoice.attributes
    end

    assert_redirected_to mostimportchoice_path(assigns(:mostimportchoice))
  end

  test "should show mostimportchoice" do
    get :show, :id => @mostimportchoice.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mostimportchoice.to_param
    assert_response :success
  end

  test "should update mostimportchoice" do
    put :update, :id => @mostimportchoice.to_param, :mostimportchoice => @mostimportchoice.attributes
    assert_redirected_to mostimportchoice_path(assigns(:mostimportchoice))
  end

  test "should destroy mostimportchoice" do
    assert_difference('Mostimportchoice.count', -1) do
      delete :destroy, :id => @mostimportchoice.to_param
    end

    assert_redirected_to mostimportchoices_path
  end
end
