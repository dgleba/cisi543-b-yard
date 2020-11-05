require "application_system_test_case"

class CilistsTest < ApplicationSystemTestCase
  setup do
    @cilist = cilists(:one)
  end

  test "visiting the index" do
    visit cilists_url
    assert_selector "h1", text: "Cilists"
  end

  test "creating a Cilist" do
    visit cilists_url
    click_on "New Cilist"

    fill_in "Active status", with: @cilist.active_status
    fill_in "Benefit", with: @cilist.benefit_id
    fill_in "Cell or location", with: @cilist.cell_or_location
    fill_in "Current state", with: @cilist.current_state
    fill_in "Feasibility", with: @cilist.feasibility_id
    fill_in "Implementation status", with: @cilist.implementation_status_id
    fill_in "Improvement suggestion", with: @cilist.improvement_suggestion
    fill_in "Sort order", with: @cilist.sort_order
    fill_in "User", with: @cilist.user_id
    fill_in "Waste type", with: @cilist.waste_type_id
    click_on "Create Cilist"

    assert_text "Cilist was successfully created"
    click_on "Back"
  end

  test "updating a Cilist" do
    visit cilists_url
    click_on "Edit", match: :first

    fill_in "Active status", with: @cilist.active_status
    fill_in "Benefit", with: @cilist.benefit_id
    fill_in "Cell or location", with: @cilist.cell_or_location
    fill_in "Current state", with: @cilist.current_state
    fill_in "Feasibility", with: @cilist.feasibility_id
    fill_in "Implementation status", with: @cilist.implementation_status_id
    fill_in "Improvement suggestion", with: @cilist.improvement_suggestion
    fill_in "Sort order", with: @cilist.sort_order
    fill_in "User", with: @cilist.user_id
    fill_in "Waste type", with: @cilist.waste_type_id
    click_on "Update Cilist"

    assert_text "Cilist was successfully updated"
    click_on "Back"
  end

  test "destroying a Cilist" do
    visit cilists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cilist was successfully destroyed"
  end
end
