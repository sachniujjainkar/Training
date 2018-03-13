json.extract! order, :id, :order_no, :is_express_delivery, :is_customer_pickup_boolean, :delivery_date, :order_currency, :order_value, :tracking_no, :special_instruction, :user_id, :address_id, :created_at, :updated_at
json.url order_url(order, format: :json)
