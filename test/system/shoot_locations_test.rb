require "application_system_test_case"

class ShootLocationsTest < ApplicationSystemTestCase
  setup do
    @shoot_location = shoot_locations(:one)
  end

  test "visiting the index" do
    visit shoot_locations_url
    assert_selector "h1", text: "Shoot locations"
  end

  test "should create shoot location" do
    visit shoot_locations_url
    click_on "New shoot location"

    fill_in "Name", with: @shoot_location.name
    fill_in "Series", with: @shoot_location.series_id
    click_on "Create Shoot location"

    assert_text "Shoot location was successfully created"
    click_on "Back"
  end

  test "should update Shoot location" do
    visit shoot_location_url(@shoot_location)
    click_on "Edit this shoot location", match: :first

    fill_in "Name", with: @shoot_location.name
    fill_in "Series", with: @shoot_location.series_id
    click_on "Update Shoot location"

    assert_text "Shoot location was successfully updated"
    click_on "Back"
  end

  test "should destroy Shoot location" do
    visit shoot_location_url(@shoot_location)
    click_on "Destroy this shoot location", match: :first

    assert_text "Shoot location was successfully destroyed"
  end
end
