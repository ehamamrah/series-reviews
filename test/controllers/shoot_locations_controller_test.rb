require "test_helper"

class ShootLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shoot_location = shoot_locations(:one)
  end

  test "should get index" do
    get shoot_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_shoot_location_url
    assert_response :success
  end

  test "should create shoot_location" do
    assert_difference("ShootLocation.count") do
      post shoot_locations_url, params: { shoot_location: { name: @shoot_location.name, series_id: @shoot_location.series_id } }
    end

    assert_redirected_to shoot_location_url(ShootLocation.last)
  end

  test "should show shoot_location" do
    get shoot_location_url(@shoot_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_shoot_location_url(@shoot_location)
    assert_response :success
  end

  test "should update shoot_location" do
    patch shoot_location_url(@shoot_location), params: { shoot_location: { name: @shoot_location.name, series_id: @shoot_location.series_id } }
    assert_redirected_to shoot_location_url(@shoot_location)
  end

  test "should destroy shoot_location" do
    assert_difference("ShootLocation.count", -1) do
      delete shoot_location_url(@shoot_location)
    end

    assert_redirected_to shoot_locations_url
  end
end
