require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get home_page_url
    assert_response :success
  end
end
