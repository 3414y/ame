require "application_system_test_case"

class SyokusyusTest < ApplicationSystemTestCase
  setup do
    @syokusyu = syokusyus(:one)
  end

  test "visiting the index" do
    visit syokusyus_url
    assert_selector "h1", text: "Syokusyus"
  end

  test "creating a Syokusyu" do
    visit syokusyus_url
    click_on "New Syokusyu"

    fill_in "Syokusyumei", with: @syokusyu.syokusyumei
    click_on "Create Syokusyu"

    assert_text "Syokusyu was successfully created"
    click_on "Back"
  end

  test "updating a Syokusyu" do
    visit syokusyus_url
    click_on "Edit", match: :first

    fill_in "Syokusyumei", with: @syokusyu.syokusyumei
    click_on "Update Syokusyu"

    assert_text "Syokusyu was successfully updated"
    click_on "Back"
  end

  test "destroying a Syokusyu" do
    visit syokusyus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Syokusyu was successfully destroyed"
  end
end
