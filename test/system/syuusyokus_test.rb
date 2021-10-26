require "application_system_test_case"

class SyuusyokusTest < ApplicationSystemTestCase
  setup do
    @syuusyoku = syuusyokus(:one)
  end

  test "visiting the index" do
    visit syuusyokus_url
    assert_selector "h1", text: "Syuusyokus"
  end

  test "creating a Syuusyoku" do
    visit syuusyokus_url
    click_on "New Syuusyoku"

    fill_in "Gakka", with: @syuusyoku.gakka_id
    fill_in "Gakkoumei", with: @syuusyoku.gakkoumei
    fill_in "Hyoutei", with: @syuusyoku.hyoutei
    check "Kennai", if @syuusyoku.kennai
    fill_in "Shp", with: @syuusyoku.shp
    click_on "Create Syuusyoku"

    assert_text "Syuusyoku was successfully created"
    click_on "Back"
  end

  test "updating a Syuusyoku" do
    visit syuusyokus_url
    click_on "Edit", match: :first

    fill_in "Gakka", with: @syuusyoku.gakka_id
    fill_in "Gakkoumei", with: @syuusyoku.gakkoumei
    fill_in "Hyoutei", with: @syuusyoku.hyoutei
    check "Kennai", if @syuusyoku.kennai
    fill_in "Shp", with: @syuusyoku.shp
    click_on "Update Syuusyoku"

    assert_text "Syuusyoku was successfully updated"
    click_on "Back"
  end

  test "destroying a Syuusyoku" do
    visit syuusyokus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Syuusyoku was successfully destroyed"
  end
end
