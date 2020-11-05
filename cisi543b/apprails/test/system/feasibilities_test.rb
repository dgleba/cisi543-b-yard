require "application_system_test_case"

class FeasibilitiesTest < ApplicationSystemTestCase
  setup do
    @feasibility = feasibilities(:one)
  end

  test "visiting the index" do
    visit feasibilities_url
    assert_selector "h1", text: "Feasibilities"
  end

  test "creating a Feasibility" do
    visit feasibilities_url
    click_on "New Feasibility"

    fill_in "Active status", with: @feasibility.active_status
    fill_in "Comment", with: @feasibility.comment
    fill_in "Name", with: @feasibility.name
    fill_in "Sort order", with: @feasibility.sort_order
    click_on "Create Feasibility"

    assert_text "Feasibility was successfully created"
    click_on "Back"
  end

  test "updating a Feasibility" do
    visit feasibilities_url
    click_on "Edit", match: :first

    fill_in "Active status", with: @feasibility.active_status
    fill_in "Comment", with: @feasibility.comment
    fill_in "Name", with: @feasibility.name
    fill_in "Sort order", with: @feasibility.sort_order
    click_on "Update Feasibility"

    assert_text "Feasibility was successfully updated"
    click_on "Back"
  end

  test "destroying a Feasibility" do
    visit feasibilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Feasibility was successfully destroyed"
  end
end
