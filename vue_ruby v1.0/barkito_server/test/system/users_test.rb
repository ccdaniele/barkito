require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    fill_in "Bar admin", with: @user.bar_admin
    fill_in "Crew member", with: @user.crew_member
    fill_in "Event", with: @user.event_id
    fill_in "Friend user", with: @user.friend_user_id
    fill_in "Menu", with: @user.menu_id
    fill_in "Performer admin", with: @user.performer_admin
    fill_in "Performer", with: @user.performer_id
    fill_in "Reservation", with: @user.reservation_id
    fill_in "Review", with: @user.review_id
    fill_in "User address", with: @user.user_address
    fill_in "User date of birth", with: @user.user_date_of_birth
    fill_in "User description", with: @user.user_description
    fill_in "User email", with: @user.user_email
    fill_in "User gender", with: @user.user_gender
    fill_in "User name", with: @user.user_name
    fill_in "User password digest", with: @user.user_password_digest
    fill_in "Vendor", with: @user.vendor_id
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Bar admin", with: @user.bar_admin
    fill_in "Crew member", with: @user.crew_member
    fill_in "Event", with: @user.event_id
    fill_in "Friend user", with: @user.friend_user_id
    fill_in "Menu", with: @user.menu_id
    fill_in "Performer admin", with: @user.performer_admin
    fill_in "Performer", with: @user.performer_id
    fill_in "Reservation", with: @user.reservation_id
    fill_in "Review", with: @user.review_id
    fill_in "User address", with: @user.user_address
    fill_in "User date of birth", with: @user.user_date_of_birth
    fill_in "User description", with: @user.user_description
    fill_in "User email", with: @user.user_email
    fill_in "User gender", with: @user.user_gender
    fill_in "User name", with: @user.user_name
    fill_in "User password digest", with: @user.user_password_digest
    fill_in "Vendor", with: @user.vendor_id
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
