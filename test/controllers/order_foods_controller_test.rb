require 'test_helper'

class OrderFoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get order_foods_create_url
    assert_response :success
  end

  test "should get update" do
    get order_foods_update_url
    assert_response :success
  end

  test "should get destroy" do
    get order_foods_destroy_url
    assert_response :success
  end

end
