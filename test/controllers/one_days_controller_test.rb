require "test_helper"

class OneDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @one_day = one_days(:one)
  end

  test "should get index" do
    get one_days_url
    assert_response :success
  end

  test "should get new" do
    get new_one_day_url
    assert_response :success
  end

  test "should create one_day" do
    assert_difference("OneDay.count") do
      post one_days_url, params: { one_day: { name: @one_day.name, start_time: @one_day.start_time } }
    end

    assert_redirected_to one_day_url(OneDay.last)
  end

  test "should show one_day" do
    get one_day_url(@one_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_one_day_url(@one_day)
    assert_response :success
  end

  test "should update one_day" do
    patch one_day_url(@one_day), params: { one_day: { name: @one_day.name, start_time: @one_day.start_time } }
    assert_redirected_to one_day_url(@one_day)
  end

  test "should destroy one_day" do
    assert_difference("OneDay.count", -1) do
      delete one_day_url(@one_day)
    end

    assert_redirected_to one_days_url
  end
end
