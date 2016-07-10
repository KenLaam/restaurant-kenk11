class CreateOrderFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :order_foods do |t|
      t.references :food_items, foreign_key: true
      t.references :order, foreign_key: true
      t.decimal :food_price
      t.integer :quantity
      t.decimal :total_price

      t.timestamps
    end
  end
end
