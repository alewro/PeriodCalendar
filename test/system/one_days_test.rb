require "application_system_test_case"

class OneDaysTest < ApplicationSystemTestCase
  setup do
    @one_day = one_days(:one)
  end

  test "visiting the index" do
    visit one_days_url
    assert_selector "h1", text: "One days"
  end

  test "should create one day" do
    visit one_days_url
    click_on "New one day"

    fill_in "Name", with: @one_day.name
    fill_in "Start time", with: @one_day.start_time
    click_on "Create One day"

    assert_text "One day was successfully created"
    click_on "Back"
  end

  test "should update One day" do
    visit one_day_url(@one_day)
    click_on "Edit this one day", match: :first

    fill_in "Name", with: @one_day.name
    fill_in "Start time", with: @one_day.start_time
    click_on "Update One day"

    assert_text "One day was successfully updated"
    click_on "Back"
  end

  test "should destroy One day" do
    visit one_day_url(@one_day)
    click_on "Destroy this one day", match: :first

    assert_text "One day was successfully destroyed"
  end
end
