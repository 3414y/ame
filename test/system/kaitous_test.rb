require "application_system_test_case"

class KaitousTest < ApplicationSystemTestCase
  setup do
    @kaitou = kaitous(:one)
  end

  test "visiting the index" do
    visit kaitous_url
    assert_selector "h1", text: "Kaitous"
  end

  test "creating a Kaitou" do
    visit kaitous_url
    click_on "New Kaitou"

    fill_in "Hentou", with: @kaitou.hentou
    fill_in "Nitiji", with: @kaitou.nitiji
    fill_in "Situmon", with: @kaitou.situmon_id
    fill_in "User", with: @kaitou.user_id
    click_on "Create Kaitou"

    assert_text "Kaitou was successfully created"
    click_on "Back"
  end

  test "updating a Kaitou" do
    visit kaitous_url
    click_on "Edit", match: :first

    fill_in "Hentou", with: @kaitou.hentou
    fill_in "Nitiji", with: @kaitou.nitiji
    fill_in "Situmon", with: @kaitou.situmon_id
    fill_in "User", with: @kaitou.user_id
    click_on "Update Kaitou"

    assert_text "Kaitou was successfully updated"
    click_on "Back"
  end

  test "destroying a Kaitou" do
    visit kaitous_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kaitou was successfully destroyed"
  end
end
