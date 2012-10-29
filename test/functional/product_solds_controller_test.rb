require 'test_helper'

class ProductSoldsControllerTest < ActionController::TestCase
  setup do
    @product_sold = product_solds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_solds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_sold" do
    assert_difference('ProductSold.count') do
      post :create, product_sold: { price: @product_sold.price, product_id: @product_sold.product_id }
    end

    assert_redirected_to product_sold_path(assigns(:product_sold))
  end

  test "should show product_sold" do
    get :show, id: @product_sold
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_sold
    assert_response :success
  end

  test "should update product_sold" do
    put :update, id: @product_sold, product_sold: { price: @product_sold.price, product_id: @product_sold.product_id }
    assert_redirected_to product_sold_path(assigns(:product_sold))
  end

  test "should destroy product_sold" do
    assert_difference('ProductSold.count', -1) do
      delete :destroy, id: @product_sold
    end

    assert_redirected_to product_solds_path
  end
end
