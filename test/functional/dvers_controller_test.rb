require 'test_helper'

class DversControllerTest < ActionController::TestCase
  setup do
    @dver = dvers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dvers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dver" do
    assert_difference('Dver.count') do
      post :create, :dver => @dver.attributes
    end

    assert_redirected_to dver_path(assigns(:dver))
  end

  test "should show dver" do
    get :show, :id => @dver.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dver.to_param
    assert_response :success
  end

  test "should update dver" do
    put :update, :id => @dver.to_param, :dver => @dver.attributes
    assert_redirected_to dver_path(assigns(:dver))
  end

  test "should destroy dver" do
    assert_difference('Dver.count', -1) do
      delete :destroy, :id => @dver.to_param
    end

    assert_redirected_to dvers_path
  end
end
