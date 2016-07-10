class OrdersController < ApplicationController

  def create
    @order = Order.new(order_params)
    @order.save
  end

  def show
  end

  private
  def order_params
    params.require(:order).permit(:name, :phone, :email, :address, :total)
  end

end
