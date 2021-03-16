require "test_helper"

class ArtworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artwork = artworks(:one)
  end

  test "should get index" do
    get artworks_url
    assert_response :success
  end

  test "should get new" do
    get new_artwork_url
    assert_response :success
  end

  test "should create artwork" do
    assert_difference('Artwork.count') do
      post artworks_url, params: { artwork: { art_description: @artwork.art_description, art_price: @artwork.art_price, art_title: @artwork.art_title, artist_id: @artwork.artist_id, available: @artwork.available } }
    end

    assert_redirected_to artwork_url(Artwork.last)
  end

  test "should show artwork" do
    get artwork_url(@artwork)
    assert_response :success
  end

  test "should get edit" do
    get edit_artwork_url(@artwork)
    assert_response :success
  end

  test "should update artwork" do
    patch artwork_url(@artwork), params: { artwork: { art_description: @artwork.art_description, art_price: @artwork.art_price, art_title: @artwork.art_title, artist_id: @artwork.artist_id, available: @artwork.available } }
    assert_redirected_to artwork_url(@artwork)
  end

  test "should destroy artwork" do
    assert_difference('Artwork.count', -1) do
      delete artwork_url(@artwork)
    end

    assert_redirected_to artworks_url
  end
end
