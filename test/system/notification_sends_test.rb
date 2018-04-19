require "application_system_test_case"

class NotificationSendsTest < ApplicationSystemTestCase
  setup do
    @notification_send = notification_sends(:one)
  end

  test "visiting the index" do
    visit notification_sends_url
    assert_selector "h1", text: "Notification Sends"
  end

  test "creating a Notification send" do
    visit notification_sends_url
    click_on "New Notification Send"

    click_on "Create Notification send"

    assert_text "Notification send was successfully created"
    click_on "Back"
  end

  test "updating a Notification send" do
    visit notification_sends_url
    click_on "Edit", match: :first

    click_on "Update Notification send"

    assert_text "Notification send was successfully updated"
    click_on "Back"
  end

  test "destroying a Notification send" do
    visit notification_sends_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Notification send was successfully destroyed"
  end
end
