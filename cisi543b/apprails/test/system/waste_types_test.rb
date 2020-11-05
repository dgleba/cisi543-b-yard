require "application_system_test_case"

class WasteTypesTest < ApplicationSystemTestCase
  setup do
    @waste_type = waste_types(:one)
  end

  test "visiting the index" do
    visit waste_types_url
    assert_selector "h1", text: "Waste Types"
  end

  test "creating a Waste type" do
    visit waste_types_url
    click_on "New Waste Type"

    fill_in "Active status", with: @waste_type.active_status
    fill_in "Comment", with: @waste_type.comment
    fill_in "Name", with: @waste_type.name
    fill_in "Sort order", with: @waste_type.sort_order
    click_on "Create Waste type"

    assert_text "Waste type was successfully created"
    click_on "Back"
  end

  test "updating a Waste type" do
    visit waste_types_url
    click_on "Edit", match: :first

    fill_in "Active status", with: @waste_type.active_status
    fill_in "Comment", with: @waste_type.comment
    fill_in "Name", with: @waste_type.name
    fill_in "Sort order", with: @waste_type.sort_order
    click_on "Update Waste type"

    assert_text "Waste type was successfully updated"
    click_on "Back"
  end

  test "destroying a Waste type" do
    visit waste_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Waste type was successfully destroyed"
  end
end
