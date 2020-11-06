require 'test_helper'

class PointsBalancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @points_balance = points_balances(:one)
  end

  test "should get index" do
    get points_balances_url
    assert_response :success
  end

  test "should get new" do
    get new_points_balance_url
    assert_response :success
  end

  test "should create points_balance" do
    assert_difference('PointsBalance.count') do
      post points_balances_url, params: { points_balance: { clocknum: @points_balance.clocknum, first_name: @points_balance.first_name, last_name: @points_balance.last_name, name: @points_balance.name, points_balance: @points_balance.points_balance, sum_points_awarded: @points_balance.sum_points_awarded, sum_points_spent: @points_balance.sum_points_spent, user_id: @points_balance.user_id } }
    end

    assert_redirected_to points_balance_url(PointsBalance.last)
  end

  test "should show points_balance" do
    get points_balance_url(@points_balance)
    assert_response :success
  end

  test "should get edit" do
    get edit_points_balance_url(@points_balance)
    assert_response :success
  end

  test "should update points_balance" do
    patch points_balance_url(@points_balance), params: { points_balance: { clocknum: @points_balance.clocknum, first_name: @points_balance.first_name, last_name: @points_balance.last_name, name: @points_balance.name, points_balance: @points_balance.points_balance, sum_points_awarded: @points_balance.sum_points_awarded, sum_points_spent: @points_balance.sum_points_spent, user_id: @points_balance.user_id } }
    assert_redirected_to points_balance_url(@points_balance)
  end

  test "should destroy points_balance" do
    assert_difference('PointsBalance.count', -1) do
      delete points_balance_url(@points_balance)
    end

    assert_redirected_to points_balances_url
  end
end
