require "application_system_test_case"

class EventAttendingsTest < ApplicationSystemTestCase
  setup do
    @event_attending = event_attendings(:one)
  end

  test "visiting the index" do
    visit event_attendings_url
    assert_selector "h1", text: "Event attendings"
  end

  test "should create event attending" do
    visit event_attendings_url
    click_on "New event attending"

    fill_in "Attended event", with: @event_attending.attended_event_id
    fill_in "Attendee", with: @event_attending.attendee_id
    click_on "Create Event attending"

    assert_text "Event attending was successfully created"
    click_on "Back"
  end

  test "should update Event attending" do
    visit event_attending_url(@event_attending)
    click_on "Edit this event attending", match: :first

    fill_in "Attended event", with: @event_attending.attended_event_id
    fill_in "Attendee", with: @event_attending.attendee_id
    click_on "Update Event attending"

    assert_text "Event attending was successfully updated"
    click_on "Back"
  end

  test "should destroy Event attending" do
    visit event_attending_url(@event_attending)
    click_on "Destroy this event attending", match: :first

    assert_text "Event attending was successfully destroyed"
  end
end
