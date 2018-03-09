json.extract! address, :id, :street, :city, :state, :country, :zip_code, :contact, :email, :user_id, :created_at, :updated_at
json.url address_url(address, format: :json)
