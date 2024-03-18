require "test_helper"

class RssFeedsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rss_feeds_index_url
    assert_response :success
  end
end
