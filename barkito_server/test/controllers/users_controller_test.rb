require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { crew_member: @user.crew_member, gender: @user.gender, password_digest: @user.password_digest, performer_admin: @user.performer_admin, user_birth: @user.user_birth, user_borough: @user.user_borough, user_city: @user.user_city, user_description: @user.user_description, user_email: @user.user_email, username: @user.username, user_neighborhood: @user.user_neighborhood, user_street: @user.user_street, user_zip_code: @user.user_zip_code, vendor_admin: @user.vendor_admin } }, as: :json
    end

    assert_response :created
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { crew_member: @user.crew_member, gender: @user.gender, password_digest: @user.password_digest, performer_admin: @user.performer_admin, user_birth: @user.user_birth, user_borough: @user.user_borough, user_city: @user.user_city, user_description: @user.user_description, user_email: @user.user_email, username: @user.username, user_neighborhood: @user.user_neighborhood, user_street: @user.user_street, user_zip_code: @user.user_zip_code, vendor_admin: @user.vendor_admin } }, as: :json
    assert_response :success
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user), as: :json
    end

    assert_response :no_content
  end
end
