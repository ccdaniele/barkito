require "application_system_test_case"

class QueriesTest < ApplicationSystemTestCase
  setup do
    @query = queries(:one)
  end

  test "visiting the index" do
    visit queries_url
    assert_selector "h1", text: "Queries"
  end

  test "should create query" do
    visit queries_url
    click_on "New query"

    fill_in "Category", with: @query.category
    fill_in "City", with: @query.city
    fill_in "Date end", with: @query.date_end
    fill_in "Date start", with: @query.date_start
    fill_in "Deal name", with: @query.deal_name
    fill_in "Deal r end", with: @query.deal_r_end
    fill_in "Deal r start", with: @query.deal_r_start
    check "Event" if @query.event
    fill_in "Event name", with: @query.event_name
    check "Menu" if @query.menu
    fill_in "Menu name", with: @query.menu_name
    fill_in "Neighborhood", with: @query.neighborhood
    check "Performer" if @query.performer
    fill_in "Price rank", with: @query.price_rank
    fill_in "Query end", with: @query.query_end
    fill_in "Query end time", with: @query.query_end_time
    fill_in "Query start", with: @query.query_start
    fill_in "Query start time", with: @query.query_start_time
    fill_in "Ranking", with: @query.ranking
    fill_in "Review rank", with: @query.review_rank
    fill_in "Sitting", with: @query.sitting
    fill_in "Subcategory", with: @query.subcategory
    check "User" if @query.user
    fill_in "User", with: @query.user_id
    fill_in "User name", with: @query.user_name
    check "Vendor" if @query.vendor
    fill_in "Vendor name", with: @query.vendor_name
    fill_in "Zip code", with: @query.zip_code
    click_on "Create Query"

    assert_text "Query was successfully created"
    click_on "Back"
  end

  test "should update Query" do
    visit query_url(@query)
    click_on "Edit this query", match: :first

    fill_in "Category", with: @query.category
    fill_in "City", with: @query.city
    fill_in "Date end", with: @query.date_end
    fill_in "Date start", with: @query.date_start
    fill_in "Deal name", with: @query.deal_name
    fill_in "Deal r end", with: @query.deal_r_end
    fill_in "Deal r start", with: @query.deal_r_start
    check "Event" if @query.event
    fill_in "Event name", with: @query.event_name
    check "Menu" if @query.menu
    fill_in "Menu name", with: @query.menu_name
    fill_in "Neighborhood", with: @query.neighborhood
    check "Performer" if @query.performer
    fill_in "Price rank", with: @query.price_rank
    fill_in "Query end", with: @query.query_end
    fill_in "Query end time", with: @query.query_end_time
    fill_in "Query start", with: @query.query_start
    fill_in "Query start time", with: @query.query_start_time
    fill_in "Ranking", with: @query.ranking
    fill_in "Review rank", with: @query.review_rank
    fill_in "Sitting", with: @query.sitting
    fill_in "Subcategory", with: @query.subcategory
    check "User" if @query.user
    fill_in "User", with: @query.user_id
    fill_in "User name", with: @query.user_name
    check "Vendor" if @query.vendor
    fill_in "Vendor name", with: @query.vendor_name
    fill_in "Zip code", with: @query.zip_code
    click_on "Update Query"

    assert_text "Query was successfully updated"
    click_on "Back"
  end

  test "should destroy Query" do
    visit query_url(@query)
    click_on "Destroy this query", match: :first

    assert_text "Query was successfully destroyed"
  end
end
