require 'test_helper'

class ZalsControllerTest < ActionController::TestCase
  setup do
    @zal = zals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zal" do
    assert_difference('Zal.count') do
      post :create, :zal => @zal.attributes
    end

    assert_redirected_to zal_path(assigns(:zal))
  end

  test "should show zal" do
    get :show, :id => @zal.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @zal.to_param
    assert_response :success
  end

  test "should update zal" do
    put :update, :id => @zal.to_param, :zal => @zal.attributes
    assert_redirected_to zal_path(assigns(:zal))
  end

  test "should destroy zal" do
    assert_difference('Zal.count', -1) do
      delete :destroy, :id => @zal.to_param
    end

    assert_redirected_to zals_path
  end
end
