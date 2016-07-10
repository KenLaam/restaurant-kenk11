class FoodItem < ApplicationRecord
  has_many :order_foods
  validates :name, :price, :section, presence:true


  def refactor_thumbnail
    if thumbnail.present?
      thumbnail
    else
      "http://loremflickr.com/320/240/#{CGI.escape name}"
    end
  end

  def price_currency
    ActionController::Base.helpers.number_to_currency(price, precision: 0, unit: "VNĐ", separator: ",", format: "%n %u")
  end
end
