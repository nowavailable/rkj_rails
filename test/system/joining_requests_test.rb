require "application_system_test_case"

class JoiningRequestsTest < ApplicationSystemTestCase
  setup do
    @joining_request = joining_requests(:one)
  end

  test "visiting the index" do
    visit joining_requests_url
    assert_selector "h1", text: "Joining Requests"
  end

  test "creating a Joining request" do
    visit joining_requests_url
    click_on "New Joining Request"

    click_on "Create Joining request"

    assert_text "Joining request was successfully created"
    click_on "Back"
  end

  test "updating a Joining request" do
    visit joining_requests_url
    click_on "Edit", match: :first

    click_on "Update Joining request"

    assert_text "Joining request was successfully updated"
    click_on "Back"
  end

  test "destroying a Joining request" do
    visit joining_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Joining request was successfully destroyed"
  end
end
