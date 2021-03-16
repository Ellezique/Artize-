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

    check "Acrylic paint" if @artmedium.acrylic_paint
    check "Canvass" if @artmedium.canvass
    check "Ceramic" if @artmedium.ceramic
    check "Clay" if @artmedium.clay
    check "Digital" if @artmedium.digital
    check "Drawing" if @artmedium.drawing
    check "Etching" if @artmedium.etching
    check "Glass" if @artmedium.glass
    check "Gouche paint" if @artmedium.gouche_paint
    check "Ink" if @artmedium.ink
    check "Lithograph" if @artmedium.lithograph
    check "Metal" if @artmedium.metal
    check "Mixed media" if @artmedium.mixed_media
    check "Oil paint" if @artmedium.oil_paint
    check "Painting" if @artmedium.painting
    check "Paper" if @artmedium.paper
    check "Pencil" if @artmedium.pencil
    check "Photography" if @artmedium.photography
    check "Print" if @artmedium.print
    check "Sculpture" if @artmedium.sculpture
    check "Stone" if @artmedium.stone
    check "Watercolor" if @artmedium.watercolor
    click_on "Create Artmedium"

    assert_text "Artmedium was successfully created"
    click_on "Back"
  end

  test "updating a Artmedium" do
    visit artmedia_url
    click_on "Edit", match: :first

    check "Acrylic paint" if @artmedium.acrylic_paint
    check "Canvass" if @artmedium.canvass
    check "Ceramic" if @artmedium.ceramic
    check "Clay" if @artmedium.clay
    check "Digital" if @artmedium.digital
    check "Drawing" if @artmedium.drawing
    check "Etching" if @artmedium.etching
    check "Glass" if @artmedium.glass
    check "Gouche paint" if @artmedium.gouche_paint
    check "Ink" if @artmedium.ink
    check "Lithograph" if @artmedium.lithograph
    check "Metal" if @artmedium.metal
    check "Mixed media" if @artmedium.mixed_media
    check "Oil paint" if @artmedium.oil_paint
    check "Painting" if @artmedium.painting
    check "Paper" if @artmedium.paper
    check "Pencil" if @artmedium.pencil
    check "Photography" if @artmedium.photography
    check "Print" if @artmedium.print
    check "Sculpture" if @artmedium.sculpture
    check "Stone" if @artmedium.stone
    check "Watercolor" if @artmedium.watercolor
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
