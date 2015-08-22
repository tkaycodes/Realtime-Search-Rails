json.array!(@products) do |product|
  json.extract! product, :id, :name, :cost, :added
  json.url product_url(product, format: :json)
end
