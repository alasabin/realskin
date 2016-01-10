json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :category, :type, :price, :count, :size, :brand, :color, :material
  json.url product_url(product, format: :json)
end
