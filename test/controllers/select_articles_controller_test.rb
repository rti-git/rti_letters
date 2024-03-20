require "test_helper"

class SelectArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get select_articles_index_url
    assert_response :success
  end
end
