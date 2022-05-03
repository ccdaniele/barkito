require "application_system_test_case"

class ReservationsTest < ApplicationSystemTestCase
  setup do
    @reservation = reservations(:one)
  end

  test "visiting the index" do
    visit reservations_url
    assert_selector "h1", text: "Reservations"
  end

  test "should create reservation" do
    visit reservations_url
    click_on "New reservation"

    fill_in "Bar", with: @reservation.bar_id
    fill_in "Event", with: @reservation.event_id
    fill_in "Reservation category", with: @reservation.reservation_category
    fill_in "Reservation date", with: @reservation.reservation_date
    fill_in "Reservation description", with: @reservation.reservation_description
    fill_in "Reservation name", with: @reservation.reservation_name
    fill_in "Reservation number people", with: @reservation.reservation_number_people
    fill_in "Reservation subcategory", with: @reservation.reservation_subcategory
    fill_in "User", with: @reservation.user_id
    click_on "Create Reservation"

    assert_text "Reservation was successfully created"
    click_on "Back"
  end

  test "should update Reservation" do
    visit reservation_url(@reservation)
    click_on "Edit this reservation", match: :first

    fill_in "Bar", with: @reservation.bar_id
    fill_in "Event", with: @reservation.event_id
    fill_in "Reservation category", with: @reservation.reservation_category
    fill_in "Reservation date", with: @reservation.reservation_date
    fill_in "Reservation description", with: @reservation.reservation_description
    fill_in "Reservation name", with: @reservation.reservation_name
    fill_in "Reservation number people", with: @reservation.reservation_number_people
    fill_in "Reservation subcategory", with: @reservation.reservation_subcategory
    fill_in "User", with: @reservation.user_id
    click_on "Update Reservation"

    assert_text "Reservation was successfully updated"
    click_on "Back"
  end

  test "should destroy Reservation" do
    visit reservation_url(@reservation)
    click_on "Destroy this reservation", match: :first

    assert_text "Reservation was successfully destroyed"
  end
end
