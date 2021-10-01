require "application_system_test_case"

class SitumonsTest < ApplicationSystemTestCase
  setup do
    @situmon = situmons(:one)
  end

  test "visiting the index" do
    visit situmons_url
    assert_selector "h1", text: "Situmons"
  end

  test "creating a Situmon" do
    visit situmons_url
    click_on "New Situmon"

    fill_in "Kategori", with: @situmon.kategori
    fill_in "Naiyou", with: @situmon.naiyou
    fill_in "Nitiji", with: @situmon.nitiji
    fill_in "User", with: @situmon.user_id
    click_on "Create Situmon"

    assert_text "Situmon was successfully created"
    click_on "Back"
  end

  test "updating a Situmon" do
    visit situmons_url
    click_on "Edit", match: :first

    fill_in "Kategori", with: @situmon.kategori
    fill_in "Naiyou", with: @situmon.naiyou
    fill_in "Nitiji", with: @situmon.nitiji
    fill_in "User", with: @situmon.user_id
    click_on "Update Situmon"

    assert_text "Situmon was successfully updated"
    click_on "Back"
  end

  test "destroying a Situmon" do
    visit situmons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Situmon was successfully destroyed"
  end
end
