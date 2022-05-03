require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { bar_admin: @user.bar_admin, crew_member: @user.crew_member, event_id: @user.event_id, friend_user_id: @user.friend_user_id, menu_id: @user.menu_id, performer_admin: @user.performer_admin, performer_id: @user.performer_id, reservation_id: @user.reservation_id, review_id: @user.review_id, user_address: @user.user_address, user_date_of_birth: @user.user_date_of_birth, user_description: @user.user_description, user_email: @user.user_email, user_gender: @user.user_gender, user_name: @user.user_name, user_password_digest: @user.user_password_digest, vendor_id: @user.vendor_id } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { bar_admin: @user.bar_admin, crew_member: @user.crew_member, event_id: @user.event_id, friend_user_id: @user.friend_user_id, menu_id: @user.menu_id, performer_admin: @user.performer_admin, performer_id: @user.performer_id, reservation_id: @user.reservation_id, review_id: @user.review_id, user_address: @user.user_address, user_date_of_birth: @user.user_date_of_birth, user_description: @user.user_description, user_email: @user.user_email, user_gender: @user.user_gender, user_name: @user.user_name, user_password_digest: @user.user_password_digest, vendor_id: @user.vendor_id } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
