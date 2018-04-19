require "application_system_test_case"

class VotingsTest < ApplicationSystemTestCase
  setup do
    @voting = votings(:one)
  end

  test "visiting the index" do
    visit votings_url
    assert_selector "h1", text: "Votings"
  end

  test "creating a Voting" do
    visit votings_url
    click_on "New Voting"

    click_on "Create Voting"

    assert_text "Voting was successfully created"
    click_on "Back"
  end

  test "updating a Voting" do
    visit votings_url
    click_on "Edit", match: :first

    click_on "Update Voting"

    assert_text "Voting was successfully updated"
    click_on "Back"
  end

  test "destroying a Voting" do
    visit votings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Voting was successfully destroyed"
  end
end
