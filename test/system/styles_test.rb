require "application_system_test_case"

class StylesTest < ApplicationSystemTestCase
  setup do
    @style = styles(:one)
  end

  test "visiting the index" do
    visit styles_url
    assert_selector "h1", text: "Styles"
  end

  test "creating a Style" do
    visit styles_url
    click_on "New Style"

    check "Abstract" if @style.abstract
    check "Figurative" if @style.figurative
    check "Geometric" if @style.geometric
    check "Illustration" if @style.illustration
    check "Landscape" if @style.landscape
    check "Objective" if @style.objective
    check "Photorealism" if @style.photorealism
    check "Pop" if @style.pop
    check "Portrait" if @style.portrait
    check "Still life" if @style.still_life
    check "Subjective" if @style.subjective
    check "Surrealism" if @style.surrealism
    click_on "Create Style"

    assert_text "Style was successfully created"
    click_on "Back"
  end

  test "updating a Style" do
    visit styles_url
    click_on "Edit", match: :first

    check "Abstract" if @style.abstract
    check "Figurative" if @style.figurative
    check "Geometric" if @style.geometric
    check "Illustration" if @style.illustration
    check "Landscape" if @style.landscape
    check "Objective" if @style.objective
    check "Photorealism" if @style.photorealism
    check "Pop" if @style.pop
    check "Portrait" if @style.portrait
    check "Still life" if @style.still_life
    check "Subjective" if @style.subjective
    check "Surrealism" if @style.surrealism
    click_on "Update Style"

    assert_text "Style was successfully updated"
    click_on "Back"
  end

  test "destroying a Style" do
    visit styles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Style was successfully destroyed"
  end
end
