require "test_helper"

class PerformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @performer = performers(:one)
  end

  test "should get index" do
    get performers_url
    assert_response :success
  end

  test "should get new" do
    get new_performer_url
    assert_response :success
  end

  test "should create performer" do
    assert_difference("Performer.count") do
      post performers_url, params: { performer: { event_id: @performer.event_id, follower_user_id: @performer.follower_user_id, perfomer_rank: @performer.perfomer_rank, performer_category: @performer.performer_category, performer_content: @performer.performer_content, performer_description: @performer.performer_description, performer_email: @performer.performer_email, performer_name: @performer.performer_name, performer_subcategory: @performer.performer_subcategory, performer_website: @performer.performer_website, performers_user_id: @performer.performers_user_id, review_id: @performer.review_id, vendor_id: @performer.vendor_id } }
    end

    assert_redirected_to performer_url(Performer.last)
  end

  test "should show performer" do
    get performer_url(@performer)
    assert_response :success
  end

  test "should get edit" do
    get edit_performer_url(@performer)
    assert_response :success
  end

  test "should update performer" do
    patch performer_url(@performer), params: { performer: { event_id: @performer.event_id, follower_user_id: @performer.follower_user_id, perfomer_rank: @performer.perfomer_rank, performer_category: @performer.performer_category, performer_content: @performer.performer_content, performer_description: @performer.performer_description, performer_email: @performer.performer_email, performer_name: @performer.performer_name, performer_subcategory: @performer.performer_subcategory, performer_website: @performer.performer_website, performers_user_id: @performer.performers_user_id, review_id: @performer.review_id, vendor_id: @performer.vendor_id } }
    assert_redirected_to performer_url(@performer)
  end

  test "should destroy performer" do
    assert_difference("Performer.count", -1) do
      delete performer_url(@performer)
    end

    assert_redirected_to performers_url
  end
end
