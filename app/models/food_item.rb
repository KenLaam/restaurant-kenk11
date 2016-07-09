class FoodItem < ApplicationRecord
  validates :name, :price, :section, presence:true

  def refactor_thumbnail
    if thumbnail.present?
      thumbnail
    else
      "http://loremflickr.com/320/240/#{CGI.escape name}"
    end
  end

end
