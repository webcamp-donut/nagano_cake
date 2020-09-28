require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get orders_top_url
    assert_response :success
  end

  test "should get index" do
    get orders_index_url
    assert_response :success
  end

  test "should get show" do
    get orders_show_url
    assert_response :success
  end

  test "should get update" do
    get orders_update_url
    assert_response :success
  end

end
