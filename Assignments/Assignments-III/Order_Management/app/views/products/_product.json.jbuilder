json.extract! product, :id, :name, :sku, :price, :quantity, :weight, :width, :height, :depth, :image, :created_at, :updated_at
json.url product_url(product, format: :json)
