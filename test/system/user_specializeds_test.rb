require "application_system_test_case"

class UserSpecializedsTest < ApplicationSystemTestCase
  setup do
    @user_specialized = user_specializeds(:one)
  end

  test "visiting the index" do
    visit user_specializeds_url
    assert_selector "h1", text: "User Specializeds"
  end

  test "creating a User specialized" do
    visit user_specializeds_url
    click_on "New User Specialized"

    click_on "Create User specialized"

    assert_text "User specialized was successfully created"
    click_on "Back"
  end

  test "updating a User specialized" do
    visit user_specializeds_url
    click_on "Edit", match: :first

    click_on "Update User specialized"

    assert_text "User specialized was successfully updated"
    click_on "Back"
  end

  test "destroying a User specialized" do
    visit user_specializeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User specialized was successfully destroyed"
  end
end
