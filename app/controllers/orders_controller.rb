class OrdersController < ApplicationController
  def new
    @food_item = FoodItem.find params[:food_item_id]
  end

  def show
    @order = Order.last
  end

  def create
    @order = Order.new(order_params)
    @food_item = FoodItem.find params[:food_item_id]
    @order.food_item = @food_item

    if @order.save
      flash[:success] = 'Order is created successful. Thank you!'
      render 'show'
    else
      flash[:error] = "Error: #{@order.errors.full_messages.to_sentence}"
      @food_item = FoodItem.find params[:food_item_id]
      render 'new'

    end

  end

  private
  def order_params
    params.require(:order).permit(:id, :name, :phone, :address)
  end
end
