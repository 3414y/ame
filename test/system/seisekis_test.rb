require "application_system_test_case"

class SeisekisTest < ApplicationSystemTestCase
  setup do
    @seiseki = seisekis(:one)
  end

  test "visiting the index" do
    visit seisekis_url
    assert_selector "h1", text: "Seisekis"
  end

  test "creating a Seiseki" do
    visit seisekis_url
    click_on "New Seiseki"

    fill_in "Gakki", with: @seiseki.gakki
    fill_in "Gakunen", with: @seiseki.gakunen
    fill_in "Hyoutei", with: @seiseki.hyoutei
    fill_in "Kyouka", with: @seiseki.kyouka_id
    fill_in "Narabi", with: @seiseki.narabi
    fill_in "Tokuten", with: @seiseki.tokuten
    fill_in "User", with: @seiseki.user_id
    click_on "Create Seiseki"

    assert_text "Seiseki was successfully created"
    click_on "Back"
  end

  test "updating a Seiseki" do
    visit seisekis_url
    click_on "Edit", match: :first

    fill_in "Gakki", with: @seiseki.gakki
    fill_in "Gakunen", with: @seiseki.gakunen
    fill_in "Hyoutei", with: @seiseki.hyoutei
    fill_in "Kyouka", with: @seiseki.kyouka_id
    fill_in "Narabi", with: @seiseki.narabi
    fill_in "Tokuten", with: @seiseki.tokuten
    fill_in "User", with: @seiseki.user_id
    click_on "Update Seiseki"

    assert_text "Seiseki was successfully updated"
    click_on "Back"
  end

  test "destroying a Seiseki" do
    visit seisekis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seiseki was successfully destroyed"
  end
end
