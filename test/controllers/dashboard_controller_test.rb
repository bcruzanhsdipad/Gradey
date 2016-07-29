require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get students" do
    get :students
    assert_response :success
  end

end
