require "application_system_test_case"

class TensusTest < ApplicationSystemTestCase
  setup do
    @tensu = tensus(:one)
  end

  test "visiting the index" do
    visit tensus_url
    assert_selector "h1", text: "Tensus"
  end

  test "creating a Tensu" do
    visit tensus_url
    click_on "New Tensu"

    fill_in "Hyoutei", with: @tensu.hyoutei
    fill_in "Kyouka", with: @tensu.kyouka_id
    fill_in "Seiseki", with: @tensu.seiseki_id
    fill_in "Tokuten", with: @tensu.tokuten
    click_on "Create Tensu"

    assert_text "Tensu was successfully created"
    click_on "Back"
  end

  test "updating a Tensu" do
    visit tensus_url
    click_on "Edit", match: :first

    fill_in "Hyoutei", with: @tensu.hyoutei
    fill_in "Kyouka", with: @tensu.kyouka_id
    fill_in "Seiseki", with: @tensu.seiseki_id
    fill_in "Tokuten", with: @tensu.tokuten
    click_on "Update Tensu"

    assert_text "Tensu was successfully updated"
    click_on "Back"
  end

  test "destroying a Tensu" do
    visit tensus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tensu was successfully destroyed"
  end
end
