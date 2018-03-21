Rails.application.routes.draw do


  resources :line_items
  root 'home#index'

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
