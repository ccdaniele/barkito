require "test_helper"

class DealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deal = deals(:one)
  end

  test "should get index" do
    get deals_url
    assert_response :success
  end

  test "should get new" do
    get new_deal_url
    assert_response :success
  end

  test "should create deal" do
    assert_difference("Deal.count") do
      post deals_url, params: { deal: { bar_id: @deal.bar_id, deal_category: @deal.deal_category, deal_description: @deal.deal_description, deal_discount: @deal.deal_discount, deal_end_time: @deal.deal_end_time, deal_start_time: @deal.deal_start_time, deal_subcategory: @deal.deal_subcategory, deal_title: @deal.deal_title, event_id: @deal.event_id } }
    end

    assert_redirected_to deal_url(Deal.last)
  end

  test "should show deal" do
    get deal_url(@deal)
    assert_response :success
  end

  test "should get edit" do
    get edit_deal_url(@deal)
    assert_response :success
  end

  test "should update deal" do
    patch deal_url(@deal), params: { deal: { bar_id: @deal.bar_id, deal_category: @deal.deal_category, deal_description: @deal.deal_description, deal_discount: @deal.deal_discount, deal_end_time: @deal.deal_end_time, deal_start_time: @deal.deal_start_time, deal_subcategory: @deal.deal_subcategory, deal_title: @deal.deal_title, event_id: @deal.event_id } }
    assert_redirected_to deal_url(@deal)
  end

  test "should destroy deal" do
    assert_difference("Deal.count", -1) do
      delete deal_url(@deal)
    end

    assert_redirected_to deals_url
  end
end
