json.extract! line_item, :id, :sku, :quantity, :price, :product_id, :order_id, :created_at, :updated_at
json.url line_item_url(line_item, format: :json)
