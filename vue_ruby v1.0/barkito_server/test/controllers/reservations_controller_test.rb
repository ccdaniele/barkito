require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation = reservations(:one)
  end

  test "should get index" do
    get reservations_url
    assert_response :success
  end

  test "should get new" do
    get new_reservation_url
    assert_response :success
  end

  test "should create reservation" do
    assert_difference("Reservation.count") do
      post reservations_url, params: { reservation: { bar_id: @reservation.bar_id, event_id: @reservation.event_id, reservation_category: @reservation.reservation_category, reservation_date: @reservation.reservation_date, reservation_description: @reservation.reservation_description, reservation_name: @reservation.reservation_name, reservation_number_people: @reservation.reservation_number_people, reservation_subcategory: @reservation.reservation_subcategory, user_id: @reservation.user_id } }
    end

    assert_redirected_to reservation_url(Reservation.last)
  end

  test "should show reservation" do
    get reservation_url(@reservation)
    assert_response :success
  end

  test "should get edit" do
    get edit_reservation_url(@reservation)
    assert_response :success
  end

  test "should update reservation" do
    patch reservation_url(@reservation), params: { reservation: { bar_id: @reservation.bar_id, event_id: @reservation.event_id, reservation_category: @reservation.reservation_category, reservation_date: @reservation.reservation_date, reservation_description: @reservation.reservation_description, reservation_name: @reservation.reservation_name, reservation_number_people: @reservation.reservation_number_people, reservation_subcategory: @reservation.reservation_subcategory, user_id: @reservation.user_id } }
    assert_redirected_to reservation_url(@reservation)
  end

  test "should destroy reservation" do
    assert_difference("Reservation.count", -1) do
      delete reservation_url(@reservation)
    end

    assert_redirected_to reservations_url
  end
end
