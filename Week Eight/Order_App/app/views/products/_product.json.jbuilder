json.extract! product, :id, :sku, :name, :quantity, :length, :width, :height, :weight, :cost_price, :storage_type, :prduct_image, :created_at, :updated_at
json.url product_url(product, format: :json)
