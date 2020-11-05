require "application_system_test_case"

class PointsTest < ApplicationSystemTestCase
  setup do
    @point = points(:one)
  end

  test "visiting the index" do
    visit points_url
    assert_selector "h1", text: "Points"
  end

  test "creating a Point" do
    visit points_url
    click_on "New Point"

    fill_in "Active status", with: @point.active_status
    fill_in "Comment", with: @point.comment
    fill_in "Item claimed", with: @point.item_claimed
    fill_in "Points spent", with: @point.points_spent
    fill_in "Sort order", with: @point.sort_order
    fill_in "User", with: @point.user_id
    click_on "Create Point"

    assert_text "Point was successfully created"
    click_on "Back"
  end

  test "updating a Point" do
    visit points_url
    click_on "Edit", match: :first

    fill_in "Active status", with: @point.active_status
    fill_in "Comment", with: @point.comment
    fill_in "Item claimed", with: @point.item_claimed
    fill_in "Points spent", with: @point.points_spent
    fill_in "Sort order", with: @point.sort_order
    fill_in "User", with: @point.user_id
    click_on "Update Point"

    assert_text "Point was successfully updated"
    click_on "Back"
  end

  test "destroying a Point" do
    visit points_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Point was successfully destroyed"
  end
end