json.extract! product, :id, :name, :sku, :quantity, :length, :width, :height, :weight, :price, :image, :created_at, :updated_at
json.url product_url(product, format: :json)
