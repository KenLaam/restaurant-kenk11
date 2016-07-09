class CreateFoodItems < ActiveRecord::Migration[5.0]
  def change
    create_table :food_items do |t|
      t.string :name
      t.decimal :price
      t.string :section
      t.string :thumbnail
      t.text :description

      t.timestamps
    end
  end
end
