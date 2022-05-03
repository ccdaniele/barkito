require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "should create event" do
    visit events_url
    click_on "New event"

    fill_in "Bar", with: @event.bar_id
    fill_in "Event category", with: @event.event_category
    fill_in "Event date", with: @event.event_date
    fill_in "Event description", with: @event.event_description
    fill_in "Event duration", with: @event.event_duration
    fill_in "Event location", with: @event.event_location
    fill_in "Event name", with: @event.event_name
    fill_in "Event price", with: @event.event_price
    fill_in "Event subcategory", with: @event.event_subcategory
    fill_in "Performer", with: @event.performer_id
    fill_in "Reservation", with: @event.reservation_id
    fill_in "User", with: @event.user_id
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "should update Event" do
    visit event_url(@event)
    click_on "Edit this event", match: :first

    fill_in "Bar", with: @event.bar_id
    fill_in "Event category", with: @event.event_category
    fill_in "Event date", with: @event.event_date
    fill_in "Event description", with: @event.event_description
    fill_in "Event duration", with: @event.event_duration
    fill_in "Event location", with: @event.event_location
    fill_in "Event name", with: @event.event_name
    fill_in "Event price", with: @event.event_price
    fill_in "Event subcategory", with: @event.event_subcategory
    fill_in "Performer", with: @event.performer_id
    fill_in "Reservation", with: @event.reservation_id
    fill_in "User", with: @event.user_id
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "should destroy Event" do
    visit event_url(@event)
    click_on "Destroy this event", match: :first

    assert_text "Event was successfully destroyed"
  end
end
