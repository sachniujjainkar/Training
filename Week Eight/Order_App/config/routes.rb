Rails.application.routes.draw do

  root 'home#index'
  resources :line_items


		resources :users do
			member do
			get 'get_addresses'
		end
	end
		resources :orders
		resources :addresses
		resources :products do
			member do
				get 'get_product_by_sku'
			end
		end
end
