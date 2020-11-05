require "application_system_test_case"

class ImplementationStatusesTest < ApplicationSystemTestCase
  setup do
    @implementation_status = implementation_statuses(:one)
  end

  test "visiting the index" do
    visit implementation_statuses_url
    assert_selector "h1", text: "Implementation Statuses"
  end

  test "creating a Implementation status" do
    visit implementation_statuses_url
    click_on "New Implementation Status"

    fill_in "Active status", with: @implementation_status.active_status
    fill_in "Comment", with: @implementation_status.comment
    fill_in "Name", with: @implementation_status.name
    fill_in "Sort order", with: @implementation_status.sort_order
    click_on "Create Implementation status"

    assert_text "Implementation status was successfully created"
    click_on "Back"
  end

  test "updating a Implementation status" do
    visit implementation_statuses_url
    click_on "Edit", match: :first

    fill_in "Active status", with: @implementation_status.active_status
    fill_in "Comment", with: @implementation_status.comment
    fill_in "Name", with: @implementation_status.name
    fill_in "Sort order", with: @implementation_status.sort_order
    click_on "Update Implementation status"

    assert_text "Implementation status was successfully updated"
    click_on "Back"
  end

  test "destroying a Implementation status" do
    visit implementation_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Implementation status was successfully destroyed"
  end
end
