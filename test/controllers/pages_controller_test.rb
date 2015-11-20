require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get accommodations" do
    get :accommodations
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get agenda" do
    get :agenda
    assert_response :success
  end

end
