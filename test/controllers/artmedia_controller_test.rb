require "test_helper"

class ArtmediaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artmedium = artmedia(:one)
  end

  test "should get index" do
    get artmedia_url
    assert_response :success
  end

  test "should get new" do
    get new_artmedium_url
    assert_response :success
  end

  test "should create artmedium" do
    assert_difference('Artmedium.count') do
      post artmedia_url, params: { artmedium: { acrylic_paint: @artmedium.acrylic_paint, canvass: @artmedium.canvass, ceramic: @artmedium.ceramic, clay: @artmedium.clay, digital: @artmedium.digital, drawing: @artmedium.drawing, etching: @artmedium.etching, glass: @artmedium.glass, gouche_paint: @artmedium.gouche_paint, ink: @artmedium.ink, lithograph: @artmedium.lithograph, metal: @artmedium.metal, mixed_media: @artmedium.mixed_media, oil_paint: @artmedium.oil_paint, painting: @artmedium.painting, paper: @artmedium.paper, pencil: @artmedium.pencil, photography: @artmedium.photography, print: @artmedium.print, sculpture: @artmedium.sculpture, stone: @artmedium.stone, watercolor: @artmedium.watercolor } }
    end

    assert_redirected_to artmedium_url(Artmedium.last)
  end

  test "should show artmedium" do
    get artmedium_url(@artmedium)
    assert_response :success
  end

  test "should get edit" do
    get edit_artmedium_url(@artmedium)
    assert_response :success
  end

  test "should update artmedium" do
    patch artmedium_url(@artmedium), params: { artmedium: { acrylic_paint: @artmedium.acrylic_paint, canvass: @artmedium.canvass, ceramic: @artmedium.ceramic, clay: @artmedium.clay, digital: @artmedium.digital, drawing: @artmedium.drawing, etching: @artmedium.etching, glass: @artmedium.glass, gouche_paint: @artmedium.gouche_paint, ink: @artmedium.ink, lithograph: @artmedium.lithograph, metal: @artmedium.metal, mixed_media: @artmedium.mixed_media, oil_paint: @artmedium.oil_paint, painting: @artmedium.painting, paper: @artmedium.paper, pencil: @artmedium.pencil, photography: @artmedium.photography, print: @artmedium.print, sculpture: @artmedium.sculpture, stone: @artmedium.stone, watercolor: @artmedium.watercolor } }
    assert_redirected_to artmedium_url(@artmedium)
  end

  test "should destroy artmedium" do
    assert_difference('Artmedium.count', -1) do
      delete artmedium_url(@artmedium)
    end

    assert_redirected_to artmedia_url
  end
end
