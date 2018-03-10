json.extract! address, :id, :user_id, :address_body, :city, :state, :postal_code, :created_at, :updated_at
json.url address_url(address, format: :json)
