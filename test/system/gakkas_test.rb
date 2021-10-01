require "application_system_test_case"

class GakkasTest < ApplicationSystemTestCase
  setup do
    @gakka = gakkas(:one)
  end

  test "visiting the index" do
    visit gakkas_url
    assert_selector "h1", text: "Gakkas"
  end

  test "creating a Gakka" do
    visit gakkas_url
    click_on "New Gakka"

    fill_in "Gakkamei", with: @gakka.gakkamei
    click_on "Create Gakka"

    assert_text "Gakka was successfully created"
    click_on "Back"
  end

  test "updating a Gakka" do
    visit gakkas_url
    click_on "Edit", match: :first

    fill_in "Gakkamei", with: @gakka.gakkamei
    click_on "Update Gakka"

    assert_text "Gakka was successfully updated"
    click_on "Back"
  end

  test "destroying a Gakka" do
    visit gakkas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gakka was successfully destroyed"
  end
end
