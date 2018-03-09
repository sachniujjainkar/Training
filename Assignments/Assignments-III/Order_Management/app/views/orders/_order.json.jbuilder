json.extract! order, :id, :order_no, :is_express_delivery, :is_custommer_Pickup, :delivery_date, :order_currency, :order_currency, :special_instruction, :user_id, :address_id, :created_at, :updated_at
json.url order_url(order, format: :json)
