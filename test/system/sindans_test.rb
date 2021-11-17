require "application_system_test_case"

class SindansTest < ApplicationSystemTestCase
  setup do
    @sindan = sindans(:one)
  end

  test "visiting the index" do
    visit sindans_url
    assert_selector "h1", text: "Sindans"
  end

  test "creating a Sindan" do
    visit sindans_url
    click_on "New Sindan"

    fill_in "Hyoutei", with: @sindan.hyoutei
    fill_in "Kennai", with: @sindan.kennai
    fill_in "Sinrosaki", with: @sindan.sinrosaki
    fill_in "Syokusyu", with: @sindan.syokusyu
    click_on "Create Sindan"

    assert_text "Sindan was successfully created"
    click_on "Back"
  end

  test "updating a Sindan" do
    visit sindans_url
    click_on "Edit", match: :first

    fill_in "Hyoutei", with: @sindan.hyoutei
    fill_in "Kennai", with: @sindan.kennai
    fill_in "Sinrosaki", with: @sindan.sinrosaki
    fill_in "Syokusyu", with: @sindan.syokusyu
    click_on "Update Sindan"

    assert_text "Sindan was successfully updated"
    click_on "Back"
  end

  test "destroying a Sindan" do
    visit sindans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sindan was successfully destroyed"
  end
end
