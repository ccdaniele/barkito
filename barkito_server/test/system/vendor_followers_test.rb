require "application_system_test_case"

class VendorFollowersTest < ApplicationSystemTestCase
  setup do
    @vendor_follower = vendor_followers(:one)
  end

  test "visiting the index" do
    visit vendor_followers_url
    assert_selector "h1", text: "Vendor followers"
  end

  test "should create vendor follower" do
    visit vendor_followers_url
    click_on "New vendor follower"

    fill_in "User", with: @vendor_follower.user_id
    fill_in "Vendor", with: @vendor_follower.vendor_id
    click_on "Create Vendor follower"

    assert_text "Vendor follower was successfully created"
    click_on "Back"
  end

  test "should update Vendor follower" do
    visit vendor_follower_url(@vendor_follower)
    click_on "Edit this vendor follower", match: :first

    fill_in "User", with: @vendor_follower.user_id
    fill_in "Vendor", with: @vendor_follower.vendor_id
    click_on "Update Vendor follower"

    assert_text "Vendor follower was successfully updated"
    click_on "Back"
  end

  test "should destroy Vendor follower" do
    visit vendor_follower_url(@vendor_follower)
    click_on "Destroy this vendor follower", match: :first

    assert_text "Vendor follower was successfully destroyed"
  end
end
