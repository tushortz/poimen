require "application_system_test_case"

class ShepherdsTest < ApplicationSystemTestCase
  setup do
    @shepherd = shepherds(:one)
  end

  test "visiting the index" do
    visit shepherds_url
    assert_selector "h1", text: "Shepherds"
  end

  test "creating a Shepherd" do
    visit shepherds_url
    click_on "New Shepherd"

    fill_in "First name", with: @shepherd.first_name
    fill_in "Last name", with: @shepherd.last_name
    click_on "Create Shepherd"

    assert_text "Shepherd was successfully created"
    click_on "Back"
  end

  test "updating a Shepherd" do
    visit shepherds_url
    click_on "Edit", match: :first

    fill_in "First name", with: @shepherd.first_name
    fill_in "Last name", with: @shepherd.last_name
    click_on "Update Shepherd"

    assert_text "Shepherd was successfully updated"
    click_on "Back"
  end

  test "destroying a Shepherd" do
    visit shepherds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shepherd was successfully destroyed"
  end
end
