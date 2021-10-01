require "application_system_test_case"

class KigyousTest < ApplicationSystemTestCase
  setup do
    @kigyou = kigyous(:one)
  end

  test "visiting the index" do
    visit kigyous_url
    assert_selector "h1", text: "Kigyous"
  end

  test "creating a Kigyou" do
    visit kigyous_url
    click_on "New Kigyou"

    fill_in "Hyoutei", with: @kigyou.hyoutei
    check "Kennnai" if @kigyou.kennnai
    fill_in "Khp", with: @kigyou.khp
    fill_in "Kigyoumei", with: @kigyou.kigyoumei
    fill_in "Syokusyu", with: @kigyou.syokusyu_id
    click_on "Create Kigyou"

    assert_text "Kigyou was successfully created"
    click_on "Back"
  end

  test "updating a Kigyou" do
    visit kigyous_url
    click_on "Edit", match: :first

    fill_in "Hyoutei", with: @kigyou.hyoutei
    check "Kennnai" if @kigyou.kennnai
    fill_in "Khp", with: @kigyou.khp
    fill_in "Kigyoumei", with: @kigyou.kigyoumei
    fill_in "Syokusyu", with: @kigyou.syokusyu_id
    click_on "Update Kigyou"

    assert_text "Kigyou was successfully updated"
    click_on "Back"
  end

  test "destroying a Kigyou" do
    visit kigyous_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kigyou was successfully destroyed"
  end
end
