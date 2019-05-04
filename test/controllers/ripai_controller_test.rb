require 'test_helper'

class RipaiControllerTest < ActionDispatch::IntegrationTest
  test "should get before" do
    get ripai_before_url
    assert_response :success
  end

  test "should get after" do
    get ripai_after_url
    assert_response :success
  end

end
