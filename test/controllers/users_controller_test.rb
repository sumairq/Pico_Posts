require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get static_pages_home_path
    assert_select "a[href=?]", signup_path
  end
end
