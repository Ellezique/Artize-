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
      post artmedia_url, params: { artmedium: { artmedium_description: @artmedium.artmedium_description } }
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
    patch artmedium_url(@artmedium), params: { artmedium: { artmedium_description: @artmedium.artmedium_description } }
    assert_redirected_to artmedium_url(@artmedium)
  end

  test "should destroy artmedium" do
    assert_difference('Artmedium.count', -1) do
      delete artmedium_url(@artmedium)
    end

    assert_redirected_to artmedia_url
  end
end
