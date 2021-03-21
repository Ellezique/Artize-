require "application_system_test_case"

class ArtmediaTest < ApplicationSystemTestCase
  setup do
    @artmedium = artmedia(:one)
  end

  test "visiting the index" do
    visit artmedia_url
    assert_selector "h1", text: "Artmedia"
  end

  test "creating a Artmedium" do
    visit artmedia_url
    click_on "New Artmedium"

    fill_in "Artmedium", with: @artmedium.artmedium
    click_on "Create Artmedium"

    assert_text "Artmedium was successfully created"
    click_on "Back"
  end

  test "updating a Artmedium" do
    visit artmedia_url
    click_on "Edit", match: :first

    fill_in "Artmedium", with: @artmedium.artmedium
    click_on "Update Artmedium"

    assert_text "Artmedium was successfully updated"
    click_on "Back"
  end

  test "destroying a Artmedium" do
    visit artmedia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Artmedium was successfully destroyed"
  end
end
