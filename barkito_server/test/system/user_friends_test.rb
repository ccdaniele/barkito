require "application_system_test_case"

class UserFriendsTest < ApplicationSystemTestCase
  setup do
    @user_friend = user_friends(:one)
  end

  test "visiting the index" do
    visit user_friends_url
    assert_selector "h1", text: "User friends"
  end

  test "should create user friend" do
    visit user_friends_url
    click_on "New user friend"

    fill_in "Friends", with: @user_friend.friends_id
    fill_in "User", with: @user_friend.user_id
    click_on "Create User friend"

    assert_text "User friend was successfully created"
    click_on "Back"
  end

  test "should update User friend" do
    visit user_friend_url(@user_friend)
    click_on "Edit this user friend", match: :first

    fill_in "Friends", with: @user_friend.friends_id
    fill_in "User", with: @user_friend.user_id
    click_on "Update User friend"

    assert_text "User friend was successfully updated"
    click_on "Back"
  end

  test "should destroy User friend" do
    visit user_friend_url(@user_friend)
    click_on "Destroy this user friend", match: :first

    assert_text "User friend was successfully destroyed"
  end
end
