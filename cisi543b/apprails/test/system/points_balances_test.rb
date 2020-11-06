require "application_system_test_case"

class PointsBalancesTest < ApplicationSystemTestCase
  setup do
    @points_balance = points_balances(:one)
  end

  test "visiting the index" do
    visit points_balances_url
    assert_selector "h1", text: "Points Balances"
  end

  test "creating a Points balance" do
    visit points_balances_url
    click_on "New Points Balance"

    fill_in "Clocknum", with: @points_balance.clocknum
    fill_in "First name", with: @points_balance.first_name
    fill_in "Last name", with: @points_balance.last_name
    fill_in "Name", with: @points_balance.name
    fill_in "Points balance", with: @points_balance.points_balance
    fill_in "Sum points awarded", with: @points_balance.sum_points_awarded
    fill_in "Sum points spent", with: @points_balance.sum_points_spent
    fill_in "User", with: @points_balance.user_id
    click_on "Create Points balance"

    assert_text "Points balance was successfully created"
    click_on "Back"
  end

  test "updating a Points balance" do
    visit points_balances_url
    click_on "Edit", match: :first

    fill_in "Clocknum", with: @points_balance.clocknum
    fill_in "First name", with: @points_balance.first_name
    fill_in "Last name", with: @points_balance.last_name
    fill_in "Name", with: @points_balance.name
    fill_in "Points balance", with: @points_balance.points_balance
    fill_in "Sum points awarded", with: @points_balance.sum_points_awarded
    fill_in "Sum points spent", with: @points_balance.sum_points_spent
    fill_in "User", with: @points_balance.user_id
    click_on "Update Points balance"

    assert_text "Points balance was successfully updated"
    click_on "Back"
  end

  test "destroying a Points balance" do
    visit points_balances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Points balance was successfully destroyed"
  end
end
