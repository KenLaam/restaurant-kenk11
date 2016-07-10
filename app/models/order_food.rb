class OrderFood < ApplicationRecord
  belongs_to :food_item
  belongs_to :order

  def food_price
    if persisted?
      self[:food_price]
    else
      food_item.price
    end
  end

  def total_price
    food_price * quantity
  end

end
