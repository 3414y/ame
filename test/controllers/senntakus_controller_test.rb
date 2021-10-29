require "test_helper"

class SenntakusControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get senntakus_top_url
    assert_response :success
  end
end
