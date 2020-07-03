require 'test_helper'

class TimingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timing = timings(:one)
  end

  test "should get index" do
    get timings_url, as: :json
    assert_response :success
  end

  test "should create timing" do
    assert_difference('Timing.count') do
      post timings_url, params: { timing: { launch_time: @timing.launch_time, target_id: @timing.target_id } }, as: :json
    end

    assert_response 201
  end

  test "should show timing" do
    get timing_url(@timing), as: :json
    assert_response :success
  end

  test "should update timing" do
    patch timing_url(@timing), params: { timing: { launch_time: @timing.launch_time, target_id: @timing.target_id } }, as: :json
    assert_response 200
  end

  test "should destroy timing" do
    assert_difference('Timing.count', -1) do
      delete timing_url(@timing), as: :json
    end

    assert_response 204
  end
end
