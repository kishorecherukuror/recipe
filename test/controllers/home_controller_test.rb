require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get products" do
    get :products
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get support" do
    get :support
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

end
