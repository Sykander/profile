require 'test_helper'

class ForumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forum = forums(:one)
  end

  test "should get index" do
    get forums_url
    assert_response :success
  end

  test "should get new" do
    get new_forum_url
    assert_response :success
  end

  test "should create forum" do
    assert_difference('Forum.count') do
      post forums_url, params: { forum: { title: @forum.title, user_id: @forum.user_id } }
    end

    assert_redirected_to forum_url(Forum.last)
  end

  test "should show forum" do
    get forum_url(@forum)
    assert_response :success
  end

  test "should get edit" do
    get edit_forum_url(@forum)
    assert_response :success
  end

  test "should update forum" do
    patch forum_url(@forum), params: { forum: { title: @forum.title, user_id: @forum.user_id } }
    assert_redirected_to forum_url(@forum)
  end

  test "should destroy forum" do
    assert_difference('Forum.count', -1) do
      delete forum_url(@forum)
    end

    assert_redirected_to forums_url
  end
end
