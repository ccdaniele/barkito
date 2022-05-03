require "application_system_test_case"

class PerformersTest < ApplicationSystemTestCase
  setup do
    @performer = performers(:one)
  end

  test "visiting the index" do
    visit performers_url
    assert_selector "h1", text: "Performers"
  end

  test "should create performer" do
    visit performers_url
    click_on "New performer"

    fill_in "Event", with: @performer.event_id
    fill_in "Follower user", with: @performer.follower_user_id
    fill_in "Perfomer rank", with: @performer.perfomer_rank
    fill_in "Performer category", with: @performer.performer_category
    fill_in "Performer content", with: @performer.performer_content
    fill_in "Performer description", with: @performer.performer_description
    fill_in "Performer email", with: @performer.performer_email
    fill_in "Performer name", with: @performer.performer_name
    fill_in "Performer subcategory", with: @performer.performer_subcategory
    fill_in "Performer website", with: @performer.performer_website
    fill_in "Performers user", with: @performer.performers_user_id
    fill_in "Review", with: @performer.review_id
    fill_in "Vendor", with: @performer.vendor_id
    click_on "Create Performer"

    assert_text "Performer was successfully created"
    click_on "Back"
  end

  test "should update Performer" do
    visit performer_url(@performer)
    click_on "Edit this performer", match: :first

    fill_in "Event", with: @performer.event_id
    fill_in "Follower user", with: @performer.follower_user_id
    fill_in "Perfomer rank", with: @performer.perfomer_rank
    fill_in "Performer category", with: @performer.performer_category
    fill_in "Performer content", with: @performer.performer_content
    fill_in "Performer description", with: @performer.performer_description
    fill_in "Performer email", with: @performer.performer_email
    fill_in "Performer name", with: @performer.performer_name
    fill_in "Performer subcategory", with: @performer.performer_subcategory
    fill_in "Performer website", with: @performer.performer_website
    fill_in "Performers user", with: @performer.performers_user_id
    fill_in "Review", with: @performer.review_id
    fill_in "Vendor", with: @performer.vendor_id
    click_on "Update Performer"

    assert_text "Performer was successfully updated"
    click_on "Back"
  end

  test "should destroy Performer" do
    visit performer_url(@performer)
    click_on "Destroy this performer", match: :first

    assert_text "Performer was successfully destroyed"
  end
end
