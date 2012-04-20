require 'test_helper'

class StesEsControllerTest < ActionController::TestCase
  setup do
    @stes_e = stes_es(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stes_es)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stes_e" do
    assert_difference('StesE.count') do
      post :create, :stes_e => @stes_e.attributes
    end

    assert_redirected_to stes_e_path(assigns(:stes_e))
  end

  test "should show stes_e" do
    get :show, :id => @stes_e.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @stes_e.to_param
    assert_response :success
  end

  test "should update stes_e" do
    put :update, :id => @stes_e.to_param, :stes_e => @stes_e.attributes
    assert_redirected_to stes_e_path(assigns(:stes_e))
  end

  test "should destroy stes_e" do
    assert_difference('StesE.count', -1) do
      delete :destroy, :id => @stes_e.to_param
    end

    assert_redirected_to stes_es_path
  end
end
