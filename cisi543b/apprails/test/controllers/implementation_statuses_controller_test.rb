require 'test_helper'

class ImplementationStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @implementation_status = implementation_statuses(:one)
  end

  test "should get index" do
    get implementation_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_implementation_status_url
    assert_response :success
  end

  test "should create implementation_status" do
    assert_difference('ImplementationStatus.count') do
      post implementation_statuses_url, params: { implementation_status: { active_status: @implementation_status.active_status, comment: @implementation_status.comment, name: @implementation_status.name, sort_order: @implementation_status.sort_order } }
    end

    assert_redirected_to implementation_status_url(ImplementationStatus.last)
  end

  test "should show implementation_status" do
    get implementation_status_url(@implementation_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_implementation_status_url(@implementation_status)
    assert_response :success
  end

  test "should update implementation_status" do
    patch implementation_status_url(@implementation_status), params: { implementation_status: { active_status: @implementation_status.active_status, comment: @implementation_status.comment, name: @implementation_status.name, sort_order: @implementation_status.sort_order } }
    assert_redirected_to implementation_status_url(@implementation_status)
  end

  test "should destroy implementation_status" do
    assert_difference('ImplementationStatus.count', -1) do
      delete implementation_status_url(@implementation_status)
    end

    assert_redirected_to implementation_statuses_url
  end
end
