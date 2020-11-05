require 'test_helper'

class FeasibilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feasibility = feasibilities(:one)
  end

  test "should get index" do
    get feasibilities_url
    assert_response :success
  end

  test "should get new" do
    get new_feasibility_url
    assert_response :success
  end

  test "should create feasibility" do
    assert_difference('Feasibility.count') do
      post feasibilities_url, params: { feasibility: { active_status: @feasibility.active_status, comment: @feasibility.comment, name: @feasibility.name, sort_order: @feasibility.sort_order } }
    end

    assert_redirected_to feasibility_url(Feasibility.last)
  end

  test "should show feasibility" do
    get feasibility_url(@feasibility)
    assert_response :success
  end

  test "should get edit" do
    get edit_feasibility_url(@feasibility)
    assert_response :success
  end

  test "should update feasibility" do
    patch feasibility_url(@feasibility), params: { feasibility: { active_status: @feasibility.active_status, comment: @feasibility.comment, name: @feasibility.name, sort_order: @feasibility.sort_order } }
    assert_redirected_to feasibility_url(@feasibility)
  end

  test "should destroy feasibility" do
    assert_difference('Feasibility.count', -1) do
      delete feasibility_url(@feasibility)
    end

    assert_redirected_to feasibilities_url
  end
end
