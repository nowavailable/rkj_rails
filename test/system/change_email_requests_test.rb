require "application_system_test_case"

class ChangeEmailRequestsTest < ApplicationSystemTestCase
  setup do
    @change_email_request = change_email_requests(:one)
  end

  test "visiting the index" do
    visit change_email_requests_url
    assert_selector "h1", text: "Change Email Requests"
  end

  test "creating a Change email request" do
    visit change_email_requests_url
    click_on "New Change Email Request"

    click_on "Create Change email request"

    assert_text "Change email request was successfully created"
    click_on "Back"
  end

  test "updating a Change email request" do
    visit change_email_requests_url
    click_on "Edit", match: :first

    click_on "Update Change email request"

    assert_text "Change email request was successfully updated"
    click_on "Back"
  end

  test "destroying a Change email request" do
    visit change_email_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Change email request was successfully destroyed"
  end
end
