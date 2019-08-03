require 'test_helper'

class CommonsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get commons_top_url
    assert_response :success
  end

end
