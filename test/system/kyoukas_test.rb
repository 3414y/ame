require "application_system_test_case"

class KyoukasTest < ApplicationSystemTestCase
  setup do
    @kyouka = kyoukas(:one)
  end

  test "visiting the index" do
    visit kyoukas_url
    assert_selector "h1", text: "Kyoukas"
  end

  test "creating a Kyouka" do
    visit kyoukas_url
    click_on "New Kyouka"

    fill_in "Gakunen", with: @kyouka.gakunen
    fill_in "Namae", with: @kyouka.namae
    fill_in "Narabi", with: @kyouka.narabi
    fill_in "Senkou", with: @kyouka.senkou
    click_on "Create Kyouka"

    assert_text "Kyouka was successfully created"
    click_on "Back"
  end

  test "updating a Kyouka" do
    visit kyoukas_url
    click_on "Edit", match: :first

    fill_in "Gakunen", with: @kyouka.gakunen
    fill_in "Namae", with: @kyouka.namae
    fill_in "Narabi", with: @kyouka.narabi
    fill_in "Senkou", with: @kyouka.senkou
    click_on "Update Kyouka"

    assert_text "Kyouka was successfully updated"
    click_on "Back"
  end

  test "destroying a Kyouka" do
    visit kyoukas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kyouka was successfully destroyed"
  end
end
