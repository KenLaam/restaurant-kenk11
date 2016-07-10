class OrderFoodsController < ApplicationController

  def new
    @order = Order.new
    @selected_item = FoodItem.find(params[:food_item_id])
    @oder_food = OrderFood.new
  end

  def create
    @order = Order.new
    @order_food = @order.order_foods.new(order_food_params)
    @order.save
  end

  def update

  end

  private
  def order_food_params
    params.require(:order_food).permit(:quantity, :food_item_id, :order_id)
  end
end
