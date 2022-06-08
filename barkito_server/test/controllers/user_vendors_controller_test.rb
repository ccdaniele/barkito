require "test_helper"

class UserVendorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_vendor = user_vendors(:one)
  end

  test "should get index" do
    get user_vendors_url, as: :json
    assert_response :success
  end

  test "should create user_vendor" do
    assert_difference("UserVendor.count") do
      post user_vendors_url, params: { user_vendor: { user_id: @user_vendor.user_id, vendor_id: @user_vendor.vendor_id } }, as: :json
    end

    assert_response :created
  end

  test "should show user_vendor" do
    get user_vendor_url(@user_vendor), as: :json
    assert_response :success
  end

  test "should update user_vendor" do
    patch user_vendor_url(@user_vendor), params: { user_vendor: { user_id: @user_vendor.user_id, vendor_id: @user_vendor.vendor_id } }, as: :json
    assert_response :success
  end

  test "should destroy user_vendor" do
    assert_difference("UserVendor.count", -1) do
      delete user_vendor_url(@user_vendor), as: :json
    end

    assert_response :no_content
  end
end
