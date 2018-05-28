require "application_system_test_case"

class ForumsTest < ApplicationSystemTestCase
  setup do
    @forum = forums(:one)
  end

  test "visiting the index" do
    visit forums_url
    assert_selector "h1", text: "Forums"
  end

  test "creating a Forum" do
    visit forums_url
    click_on "New Forum"

    fill_in "Title", with: @forum.title
    fill_in "User", with: @forum.user_id
    click_on "Create Forum"

    assert_text "Forum was successfully created"
    click_on "Back"
  end

  test "updating a Forum" do
    visit forums_url
    click_on "Edit", match: :first

    fill_in "Title", with: @forum.title
    fill_in "User", with: @forum.user_id
    click_on "Update Forum"

    assert_text "Forum was successfully updated"
    click_on "Back"
  end

  test "destroying a Forum" do
    visit forums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Forum was successfully destroyed"
  end
end
