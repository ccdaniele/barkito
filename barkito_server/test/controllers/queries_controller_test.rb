require "test_helper"

class QueriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @query = queries(:one)
  end

  test "should get index" do
    get queries_url
    assert_response :success
  end

  test "should get new" do
    get new_query_url
    assert_response :success
  end

  test "should create query" do
    assert_difference("Query.count") do
      post queries_url, params: { query: { category: @query.category, city: @query.city, date_end: @query.date_end, date_start: @query.date_start, deal_name: @query.deal_name, deal_r_end: @query.deal_r_end, deal_r_start: @query.deal_r_start, event: @query.event, event_name: @query.event_name, menu: @query.menu, menu_name: @query.menu_name, neighborhood: @query.neighborhood, performer: @query.performer, price_rank: @query.price_rank, query_end: @query.query_end, query_end_time: @query.query_end_time, query_start: @query.query_start, query_start_time: @query.query_start_time, ranking: @query.ranking, review_rank: @query.review_rank, sitting: @query.sitting, subcategory: @query.subcategory, user: @query.user, user_id: @query.user_id, user_name: @query.user_name, vendor: @query.vendor, vendor_name: @query.vendor_name, zip_code: @query.zip_code } }
    end

    assert_redirected_to query_url(Query.last)
  end

  test "should show query" do
    get query_url(@query)
    assert_response :success
  end

  test "should get edit" do
    get edit_query_url(@query)
    assert_response :success
  end

  test "should update query" do
    patch query_url(@query), params: { query: { category: @query.category, city: @query.city, date_end: @query.date_end, date_start: @query.date_start, deal_name: @query.deal_name, deal_r_end: @query.deal_r_end, deal_r_start: @query.deal_r_start, event: @query.event, event_name: @query.event_name, menu: @query.menu, menu_name: @query.menu_name, neighborhood: @query.neighborhood, performer: @query.performer, price_rank: @query.price_rank, query_end: @query.query_end, query_end_time: @query.query_end_time, query_start: @query.query_start, query_start_time: @query.query_start_time, ranking: @query.ranking, review_rank: @query.review_rank, sitting: @query.sitting, subcategory: @query.subcategory, user: @query.user, user_id: @query.user_id, user_name: @query.user_name, vendor: @query.vendor, vendor_name: @query.vendor_name, zip_code: @query.zip_code } }
    assert_redirected_to query_url(@query)
  end

  test "should destroy query" do
    assert_difference("Query.count", -1) do
      delete query_url(@query)
    end

    assert_redirected_to queries_url
  end
end
