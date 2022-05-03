require "application_system_test_case"

class VendorsTest < ApplicationSystemTestCase
  setup do
    @vendor = vendors(:one)
  end

  test "visiting the index" do
    visit vendors_url
    assert_selector "h1", text: "Vendors"
  end

  test "should create vendor" do
    visit vendors_url
    click_on "New vendor"

    fill_in "Admin user", with: @vendor.admin_user_id
    fill_in "Community user", with: @vendor.community_user_id
    fill_in "Crew", with: @vendor.crew_id
    fill_in "Deals", with: @vendor.deals_id
    fill_in "Event", with: @vendor.event_id
    fill_in "Menu", with: @vendor.menu_id
    fill_in "Performer", with: @vendor.performer_id
    fill_in "Reservation", with: @vendor.reservation_id
    fill_in "Review", with: @vendor.review_id
    fill_in "Vendor accepted payment", with: @vendor.vendor_accepted_payment
    fill_in "Vendor address", with: @vendor.vendor_address
    fill_in "Vendor category", with: @vendor.vendor_category
    fill_in "Vendor email", with: @vendor.vendor_email
    fill_in "Vendor founded date", with: @vendor.vendor_founded_date
    fill_in "Vendor name", with: @vendor.vendor_name
    fill_in "Vendor phone number", with: @vendor.vendor_phone_number
    fill_in "Vendor subcategory", with: @vendor.vendor_subcategory
    fill_in "Vendor website", with: @vendor.vendor_website
    click_on "Create Vendor"

    assert_text "Vendor was successfully created"
    click_on "Back"
  end

  test "should update Vendor" do
    visit vendor_url(@vendor)
    click_on "Edit this vendor", match: :first

    fill_in "Admin user", with: @vendor.admin_user_id
    fill_in "Community user", with: @vendor.community_user_id
    fill_in "Crew", with: @vendor.crew_id
    fill_in "Deals", with: @vendor.deals_id
    fill_in "Event", with: @vendor.event_id
    fill_in "Menu", with: @vendor.menu_id
    fill_in "Performer", with: @vendor.performer_id
    fill_in "Reservation", with: @vendor.reservation_id
    fill_in "Review", with: @vendor.review_id
    fill_in "Vendor accepted payment", with: @vendor.vendor_accepted_payment
    fill_in "Vendor address", with: @vendor.vendor_address
    fill_in "Vendor category", with: @vendor.vendor_category
    fill_in "Vendor email", with: @vendor.vendor_email
    fill_in "Vendor founded date", with: @vendor.vendor_founded_date
    fill_in "Vendor name", with: @vendor.vendor_name
    fill_in "Vendor phone number", with: @vendor.vendor_phone_number
    fill_in "Vendor subcategory", with: @vendor.vendor_subcategory
    fill_in "Vendor website", with: @vendor.vendor_website
    click_on "Update Vendor"

    assert_text "Vendor was successfully updated"
    click_on "Back"
  end

  test "should destroy Vendor" do
    visit vendor_url(@vendor)
    click_on "Destroy this vendor", match: :first

    assert_text "Vendor was successfully destroyed"
  end
end
