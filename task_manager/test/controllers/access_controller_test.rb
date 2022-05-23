require "test_helper"

class AccessControllerTest < ActionDispatch::IntegrationTest
  test "should get menu" do
    get access_menu_url
    assert_response :success
  end

  test "should get new" do
    get access_new_url
    assert_response :success
  end
end
