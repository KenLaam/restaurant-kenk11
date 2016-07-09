json.array!(@food_items) do |food_item|
  json.extract! food_item, :id, :name, :description, :section, :price
  json.url food_items_url(food_item, format: :json)
end
