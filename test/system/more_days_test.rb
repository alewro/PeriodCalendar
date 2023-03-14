require "application_system_test_case"

class MoreDaysTest < ApplicationSystemTestCase
  setup do
    @more_day = more_days(:one)
  end

  test "visiting the index" do
    visit more_days_url
    assert_selector "h1", text: "More days"
  end

  test "should create more day" do
    visit more_days_url
    click_on "New more day"

    fill_in "End time", with: @more_day.end_time
    fill_in "Name", with: @more_day.name
    fill_in "Start time", with: @more_day.start_time
    click_on "Create More day"

    assert_text "More day was successfully created"
    click_on "Back"
  end

  test "should update More day" do
    visit more_day_url(@more_day)
    click_on "Edit this more day", match: :first

    fill_in "End time", with: @more_day.end_time
    fill_in "Name", with: @more_day.name
    fill_in "Start time", with: @more_day.start_time
    click_on "Update More day"

    assert_text "More day was successfully updated"
    click_on "Back"
  end

  test "should destroy More day" do
    visit more_day_url(@more_day)
    click_on "Destroy this more day", match: :first

    assert_text "More day was successfully destroyed"
  end
end
