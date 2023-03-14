require "test_helper"

class MoreDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @more_day = more_days(:one)
  end

  test "should get index" do
    get more_days_url
    assert_response :success
  end

  test "should get new" do
    get new_more_day_url
    assert_response :success
  end

  test "should create more_day" do
    assert_difference("MoreDay.count") do
      post more_days_url, params: { more_day: { end_time: @more_day.end_time, name: @more_day.name, start_time: @more_day.start_time } }
    end

    assert_redirected_to more_day_url(MoreDay.last)
  end

  test "should show more_day" do
    get more_day_url(@more_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_more_day_url(@more_day)
    assert_response :success
  end

  test "should update more_day" do
    patch more_day_url(@more_day), params: { more_day: { end_time: @more_day.end_time, name: @more_day.name, start_time: @more_day.start_time } }
    assert_redirected_to more_day_url(@more_day)
  end

  test "should destroy more_day" do
    assert_difference("MoreDay.count", -1) do
      delete more_day_url(@more_day)
    end

    assert_redirected_to more_days_url
  end
end
