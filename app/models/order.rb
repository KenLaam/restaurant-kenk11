class Order < ApplicationRecord
  has_many :order_foods
  before_save :update_subtotal

  def subtotal
    order_foods.collect { |od| od.valid? ? (od.quantity * od.food_price) : 0 }.sum
  end

  private
  def update_subtotal
    self[:subtotal] = subtotal
  end
end
