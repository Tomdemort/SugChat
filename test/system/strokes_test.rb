require "application_system_test_case"

class StrokesTest < ApplicationSystemTestCase
  setup do
    @stroke = strokes(:one)
  end

  test "visiting the index" do
    visit strokes_url
    assert_selector "h1", text: "Strokes"
  end

  test "creating a Stroke" do
    visit strokes_url
    click_on "New Stroke"

    fill_in "Chat Room", with: @stroke.chat_room_id
    fill_in "Px", with: @stroke.px
    fill_in "Rgb", with: @stroke.rgb
    fill_in "X", with: @stroke.x
    fill_in "Y", with: @stroke.y
    click_on "Create Stroke"

    assert_text "Stroke was successfully created"
    click_on "Back"
  end

  test "updating a Stroke" do
    visit strokes_url
    click_on "Edit", match: :first

    fill_in "Chat Room", with: @stroke.chat_room_id
    fill_in "Px", with: @stroke.px
    fill_in "Rgb", with: @stroke.rgb
    fill_in "X", with: @stroke.x
    fill_in "Y", with: @stroke.y
    click_on "Update Stroke"

    assert_text "Stroke was successfully updated"
    click_on "Back"
  end

  test "destroying a Stroke" do
    visit strokes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stroke was successfully destroyed"
  end
end
