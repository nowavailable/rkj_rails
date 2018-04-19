require "application_system_test_case"

class AcknowledgementsTest < ApplicationSystemTestCase
  setup do
    @acknowledgement = acknowledgements(:one)
  end

  test "visiting the index" do
    visit acknowledgements_url
    assert_selector "h1", text: "Acknowledgements"
  end

  test "creating a Acknowledgement" do
    visit acknowledgements_url
    click_on "New Acknowledgement"

    fill_in "Body", with: @acknowledgement.body
    click_on "Create Acknowledgement"

    assert_text "Acknowledgement was successfully created"
    click_on "Back"
  end

  test "updating a Acknowledgement" do
    visit acknowledgements_url
    click_on "Edit", match: :first

    fill_in "Body", with: @acknowledgement.body
    click_on "Update Acknowledgement"

    assert_text "Acknowledgement was successfully updated"
    click_on "Back"
  end

  test "destroying a Acknowledgement" do
    visit acknowledgements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Acknowledgement was successfully destroyed"
  end
end
