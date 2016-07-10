class FoodItem < ApplicationRecord
  has_many :orders, dependent: :destroy
  validates :name, :price, :section, presence: true


  def refactor_thumbnail
    if thumbnail.present?
      thumbnail
    else
      "http://loremflickr.com/480/360/#{CGI.escape name}"
    end
  end

  def shipping
    ActionController::Base.helpers.number_to_currency(20000, precision: 0, unit: "VNĐ", separator: ",", format: "%n %u")
  end

  def price_currency
    ActionController::Base.helpers.number_to_currency(price, precision: 0, unit: "VNĐ", separator: ",", format: "%n %u")
  end

  def total
    ActionController::Base.helpers.number_to_currency(price + 20000, precision: 0, unit: "VNĐ", separator: ",", format: "%n %u")
  end
end
