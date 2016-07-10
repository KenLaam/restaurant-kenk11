class Order < ApplicationRecord
  belongs_to :food_item

  def total_price
    ActionController::Base.helpers.number_to_currency(food_item.price * quantity, precision: 0, unit: "VNĐ", separator: ",", format: "%n %u")

  end

end
