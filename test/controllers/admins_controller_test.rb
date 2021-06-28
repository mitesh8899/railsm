require "test_helper"

class AdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get admins_list_url
    assert_response :success
  end
end
