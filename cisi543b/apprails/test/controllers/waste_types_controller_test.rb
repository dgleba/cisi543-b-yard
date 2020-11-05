require 'test_helper'

class WasteTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @waste_type = waste_types(:one)
  end

  test "should get index" do
    get waste_types_url
    assert_response :success
  end

  test "should get new" do
    get new_waste_type_url
    assert_response :success
  end

  test "should create waste_type" do
    assert_difference('WasteType.count') do
      post waste_types_url, params: { waste_type: { active_status: @waste_type.active_status, comment: @waste_type.comment, name: @waste_type.name, sort_order: @waste_type.sort_order } }
    end

    assert_redirected_to waste_type_url(WasteType.last)
  end

  test "should show waste_type" do
    get waste_type_url(@waste_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_waste_type_url(@waste_type)
    assert_response :success
  end

  test "should update waste_type" do
    patch waste_type_url(@waste_type), params: { waste_type: { active_status: @waste_type.active_status, comment: @waste_type.comment, name: @waste_type.name, sort_order: @waste_type.sort_order } }
    assert_redirected_to waste_type_url(@waste_type)
  end

  test "should destroy waste_type" do
    assert_difference('WasteType.count', -1) do
      delete waste_type_url(@waste_type)
    end

    assert_redirected_to waste_types_url
  end
end
