require "application_system_test_case"

class OrderitemsTest < ApplicationSystemTestCase
  setup do
    @orderitem = orderitems(:one)
  end

  test "visiting the index" do
    visit orderitems_url
    assert_selector "h1", text: "Orderitems"
  end

  test "creating a Orderitem" do
    visit orderitems_url
    click_on "New Orderitem"

    fill_in "Order", with: @orderitem.order_id
    click_on "Create Orderitem"

    assert_text "Orderitem was successfully created"
    click_on "Back"
  end

  test "updating a Orderitem" do
    visit orderitems_url
    click_on "Edit", match: :first

    fill_in "Order", with: @orderitem.order_id
    click_on "Update Orderitem"

    assert_text "Orderitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Orderitem" do
    visit orderitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Orderitem was successfully destroyed"
  end
end
