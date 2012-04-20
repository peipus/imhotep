require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get activities" do
    get :activities
    assert_response :success
  end

  test "should get partners" do
    get :partners
    assert_response :success
  end

  test "should get contacts" do
    get :contacts
    assert_response :success
  end

  test "should get building" do
    get :building
    assert_response :success
  end

  test "should get windows" do
    get :windows
    assert_response :success
  end

  test "should get doors" do
    get :doors
    assert_response :success
  end

  test "should get shade" do
    get :shade
    assert_response :success
  end

end
