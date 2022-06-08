require "test_helper"

class VendorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vendor = vendors(:one)
  end

  test "should get index" do
    get vendors_url, as: :json
    assert_response :success
  end

  test "should create vendor" do
    assert_difference("Vendor.count") do
      post vendors_url, params: { vendor: { building_number: @vendor.building_number, closing_time: @vendor.closing_time, crew: @vendor.crew, open_time: @vendor.open_time, seating: @vendor.seating, vendor_accepted_payment: @vendor.vendor_accepted_payment, vendor_borough: @vendor.vendor_borough, vendor_category: @vendor.vendor_category, vendor_city: @vendor.vendor_city, vendor_email: @vendor.vendor_email, vendor_founded_date: @vendor.vendor_founded_date, vendor_name: @vendor.vendor_name, vendor_neighborhood: @vendor.vendor_neighborhood, vendor_phone_number: @vendor.vendor_phone_number, vendor_street: @vendor.vendor_street, vendor_subcategory: @vendor.vendor_subcategory, vendor_website: @vendor.vendor_website, working_days: @vendor.working_days, zip_code: @vendor.zip_code } }, as: :json
    end

    assert_response :created
  end

  test "should show vendor" do
    get vendor_url(@vendor), as: :json
    assert_response :success
  end

  test "should update vendor" do
    patch vendor_url(@vendor), params: { vendor: { building_number: @vendor.building_number, closing_time: @vendor.closing_time, crew: @vendor.crew, open_time: @vendor.open_time, seating: @vendor.seating, vendor_accepted_payment: @vendor.vendor_accepted_payment, vendor_borough: @vendor.vendor_borough, vendor_category: @vendor.vendor_category, vendor_city: @vendor.vendor_city, vendor_email: @vendor.vendor_email, vendor_founded_date: @vendor.vendor_founded_date, vendor_name: @vendor.vendor_name, vendor_neighborhood: @vendor.vendor_neighborhood, vendor_phone_number: @vendor.vendor_phone_number, vendor_street: @vendor.vendor_street, vendor_subcategory: @vendor.vendor_subcategory, vendor_website: @vendor.vendor_website, working_days: @vendor.working_days, zip_code: @vendor.zip_code } }, as: :json
    assert_response :success
  end

  test "should destroy vendor" do
    assert_difference("Vendor.count", -1) do
      delete vendor_url(@vendor), as: :json
    end

    assert_response :no_content
  end
end
