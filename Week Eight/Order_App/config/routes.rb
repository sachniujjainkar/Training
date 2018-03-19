Rails.application.routes.draw do
  
 
  root 'home#index'

		resources :users 
		resources :orders
		resources :addresses
		resources :products
end
