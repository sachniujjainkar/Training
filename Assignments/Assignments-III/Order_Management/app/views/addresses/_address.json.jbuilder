json.extract! address, :id, :line1, :line2, :line3, :city, :state, :country, :postal_code, :contact_no, :email, :user_id, :created_at, :updated_at
json.url address_url(address, format: :json)
