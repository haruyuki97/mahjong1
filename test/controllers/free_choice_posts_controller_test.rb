require 'test_helper'

class FreeChoicePostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get free_choice_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get free_choice_posts_show_url
    assert_response :success
  end

  test "should get new" do
    get free_choice_posts_new_url
    assert_response :success
  end

  test "should get edit" do
    get free_choice_posts_edit_url
    assert_response :success
  end

end
