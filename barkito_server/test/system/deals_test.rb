require "application_system_test_case"

class DealsTest < ApplicationSystemTestCase
  setup do
    @deal = deals(:one)
  end

  test "visiting the index" do
    visit deals_url
    assert_selector "h1", text: "Deals"
  end

  test "should create deal" do
    visit deals_url
    click_on "New deal"

    fill_in "Bar", with: @deal.bar_id
    fill_in "Deal category", with: @deal.deal_category
    fill_in "Deal description", with: @deal.deal_description
    fill_in "Deal discount", with: @deal.deal_discount
    fill_in "Deal end time", with: @deal.deal_end_time
    fill_in "Deal start time", with: @deal.deal_start_time
    fill_in "Deal subcategory", with: @deal.deal_subcategory
    fill_in "Deal title", with: @deal.deal_title
    fill_in "Event", with: @deal.event_id
    click_on "Create Deal"

    assert_text "Deal was successfully created"
    click_on "Back"
  end

  test "should update Deal" do
    visit deal_url(@deal)
    click_on "Edit this deal", match: :first

    fill_in "Bar", with: @deal.bar_id
    fill_in "Deal category", with: @deal.deal_category
    fill_in "Deal description", with: @deal.deal_description
    fill_in "Deal discount", with: @deal.deal_discount
    fill_in "Deal end time", with: @deal.deal_end_time
    fill_in "Deal start time", with: @deal.deal_start_time
    fill_in "Deal subcategory", with: @deal.deal_subcategory
    fill_in "Deal title", with: @deal.deal_title
    fill_in "Event", with: @deal.event_id
    click_on "Update Deal"

    assert_text "Deal was successfully updated"
    click_on "Back"
  end

  test "should destroy Deal" do
    visit deal_url(@deal)
    click_on "Destroy this deal", match: :first

    assert_text "Deal was successfully destroyed"
  end
end
