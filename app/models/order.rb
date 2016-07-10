class Order < ApplicationRecord
  belongs_to :food_item
  validates :food_item, :name, :phone, :address, presence: true

  def time
    self[:created_at].strftime('%A, %B %d, %r')
  end
end
