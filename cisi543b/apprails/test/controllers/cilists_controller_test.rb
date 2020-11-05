require 'test_helper'

class CilistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cilist = cilists(:one)
  end

  test "should get index" do
    get cilists_url
    assert_response :success
  end

  test "should get new" do
    get new_cilist_url
    assert_response :success
  end

  test "should create cilist" do
    assert_difference('Cilist.count') do
      post cilists_url, params: { cilist: { active_status: @cilist.active_status, benefit_id: @cilist.benefit_id, cell_or_location: @cilist.cell_or_location, current_state: @cilist.current_state, feasibility_id: @cilist.feasibility_id, implementation_status_id: @cilist.implementation_status_id, improvement_suggestion: @cilist.improvement_suggestion, sort_order: @cilist.sort_order, user_id: @cilist.user_id, waste_type_id: @cilist.waste_type_id } }
    end

    assert_redirected_to cilist_url(Cilist.last)
  end

  test "should show cilist" do
    get cilist_url(@cilist)
    assert_response :success
  end

  test "should get edit" do
    get edit_cilist_url(@cilist)
    assert_response :success
  end

  test "should update cilist" do
    patch cilist_url(@cilist), params: { cilist: { active_status: @cilist.active_status, benefit_id: @cilist.benefit_id, cell_or_location: @cilist.cell_or_location, current_state: @cilist.current_state, feasibility_id: @cilist.feasibility_id, implementation_status_id: @cilist.implementation_status_id, improvement_suggestion: @cilist.improvement_suggestion, sort_order: @cilist.sort_order, user_id: @cilist.user_id, waste_type_id: @cilist.waste_type_id } }
    assert_redirected_to cilist_url(@cilist)
  end

  test "should destroy cilist" do
    assert_difference('Cilist.count', -1) do
      delete cilist_url(@cilist)
    end

    assert_redirected_to cilists_url
  end
end
