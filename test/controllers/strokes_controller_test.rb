require 'test_helper'

class StrokesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stroke = strokes(:one)
  end

  test "should get index" do
    get strokes_url
    assert_response :success
  end

  test "should get new" do
    get new_stroke_url
    assert_response :success
  end

  test "should create stroke" do
    assert_difference('Stroke.count') do
      post strokes_url, params: { stroke: { chat_room_id: @stroke.chat_room_id, px: @stroke.px, rgb: @stroke.rgb, x: @stroke.x, y: @stroke.y } }
    end

    assert_redirected_to stroke_url(Stroke.last)
  end

  test "should show stroke" do
    get stroke_url(@stroke)
    assert_response :success
  end

  test "should get edit" do
    get edit_stroke_url(@stroke)
    assert_response :success
  end

  test "should update stroke" do
    patch stroke_url(@stroke), params: { stroke: { chat_room_id: @stroke.chat_room_id, px: @stroke.px, rgb: @stroke.rgb, x: @stroke.x, y: @stroke.y } }
    assert_redirected_to stroke_url(@stroke)
  end

  test "should destroy stroke" do
    assert_difference('Stroke.count', -1) do
      delete stroke_url(@stroke)
    end

    assert_redirected_to strokes_url
  end
end
