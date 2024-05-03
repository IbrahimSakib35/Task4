require "test_helper"

class AdminPanelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_panel_index_url
    assert_response :success
  end

  test "should get user_management" do
    get admin_panel_user_management_url
    assert_response :success
  end
end
