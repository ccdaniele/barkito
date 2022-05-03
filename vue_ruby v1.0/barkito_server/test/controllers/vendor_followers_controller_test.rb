require "test_helper"

class VendorFollowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vendor_follower = vendor_followers(:one)
  end

  test "should get index" do
    get vendor_followers_url
    assert_response :success
  end

  test "should get new" do
    get new_vendor_follower_url
    assert_response :success
  end

  test "should create vendor_follower" do
    assert_difference("VendorFollower.count") do
      post vendor_followers_url, params: { vendor_follower: { user_id: @vendor_follower.user_id, vendor_id: @vendor_follower.vendor_id } }
    end

    assert_redirected_to vendor_follower_url(VendorFollower.last)
  end

  test "should show vendor_follower" do
    get vendor_follower_url(@vendor_follower)
    assert_response :success
  end

  test "should get edit" do
    get edit_vendor_follower_url(@vendor_follower)
    assert_response :success
  end

  test "should update vendor_follower" do
    patch vendor_follower_url(@vendor_follower), params: { vendor_follower: { user_id: @vendor_follower.user_id, vendor_id: @vendor_follower.vendor_id } }
    assert_redirected_to vendor_follower_url(@vendor_follower)
  end

  test "should destroy vendor_follower" do
    assert_difference("VendorFollower.count", -1) do
      delete vendor_follower_url(@vendor_follower)
    end

    assert_redirected_to vendor_followers_url
  end
end
