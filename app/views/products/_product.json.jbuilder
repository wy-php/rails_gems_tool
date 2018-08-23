json.extract! product, :id, :name, :pirce, :num, :created_at, :updated_at
json.url product_url(product, format: :json)
