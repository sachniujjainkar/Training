Rails.application.routes.draw do
  resources :orders
  resources :addresses
  resources :users
  resources :products do
  	member do
    	get :get_product_by_sku
  	end
  end
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
