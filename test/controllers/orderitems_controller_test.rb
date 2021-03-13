require "test_helper"

class OrderitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orderitem = orderitems(:one)
  end

  test "should get index" do
    get orderitems_url
    assert_response :success
  end

  test "should get new" do
    get new_orderitem_url
    assert_response :success
  end

  test "should create orderitem" do
    assert_difference('Orderitem.count') do
      post orderitems_url, params: { orderitem: { order_id: @orderitem.order_id } }
    end

    assert_redirected_to orderitem_url(Orderitem.last)
  end

  test "should show orderitem" do
    get orderitem_url(@orderitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_orderitem_url(@orderitem)
    assert_response :success
  end

  test "should update orderitem" do
    patch orderitem_url(@orderitem), params: { orderitem: { order_id: @orderitem.order_id } }
    assert_redirected_to orderitem_url(@orderitem)
  end

  test "should destroy orderitem" do
    assert_difference('Orderitem.count', -1) do
      delete orderitem_url(@orderitem)
    end

    assert_redirected_to orderitems_url
  end
end
