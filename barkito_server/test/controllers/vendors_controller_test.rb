require "test_helper"

class VendorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vendor = vendors(:one)
  end

  test "should get index" do
    get vendors_url
    assert_response :success
  end

  test "should get new" do
    get new_vendor_url
    assert_response :success
  end

  test "should create vendor" do
    assert_difference("Vendor.count") do
      post vendors_url, params: { vendor: { admin_user_id: @vendor.admin_user_id, community_user_id: @vendor.community_user_id, crew_id: @vendor.crew_id, deals_id: @vendor.deals_id, event_id: @vendor.event_id, menu_id: @vendor.menu_id, performer_id: @vendor.performer_id, reservation_id: @vendor.reservation_id, review_id: @vendor.review_id, vendor_accepted_payment: @vendor.vendor_accepted_payment, vendor_address: @vendor.vendor_address, vendor_category: @vendor.vendor_category, vendor_email: @vendor.vendor_email, vendor_founded_date: @vendor.vendor_founded_date, vendor_name: @vendor.vendor_name, vendor_phone_number: @vendor.vendor_phone_number, vendor_subcategory: @vendor.vendor_subcategory, vendor_website: @vendor.vendor_website } }
    end

    assert_redirected_to vendor_url(Vendor.last)
  end

  test "should show vendor" do
    get vendor_url(@vendor)
    assert_response :success
  end

  test "should get edit" do
    get edit_vendor_url(@vendor)
    assert_response :success
  end

  test "should update vendor" do
    patch vendor_url(@vendor), params: { vendor: { admin_user_id: @vendor.admin_user_id, community_user_id: @vendor.community_user_id, crew_id: @vendor.crew_id, deals_id: @vendor.deals_id, event_id: @vendor.event_id, menu_id: @vendor.menu_id, performer_id: @vendor.performer_id, reservation_id: @vendor.reservation_id, review_id: @vendor.review_id, vendor_accepted_payment: @vendor.vendor_accepted_payment, vendor_address: @vendor.vendor_address, vendor_category: @vendor.vendor_category, vendor_email: @vendor.vendor_email, vendor_founded_date: @vendor.vendor_founded_date, vendor_name: @vendor.vendor_name, vendor_phone_number: @vendor.vendor_phone_number, vendor_subcategory: @vendor.vendor_subcategory, vendor_website: @vendor.vendor_website } }
    assert_redirected_to vendor_url(@vendor)
  end

  test "should destroy vendor" do
    assert_difference("Vendor.count", -1) do
      delete vendor_url(@vendor)
    end

    assert_redirected_to vendors_url
  end
end
