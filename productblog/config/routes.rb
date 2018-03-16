Rails.application.routes.draw do
  #resources :lineitems
  resources :orders do 
    resources :lineitems
  end
  #resources :products
  

#   resources :users do
#   member do
#     get 'get_addresses'
#   end
# end

#resources :users
resources :addresses

  get 'home/index'

  resources :categories
  resources :products do
  	collection do
   	  get 'get_product'
  	end
  end

  resources :users do
    member do
      get 'get_addresses'
    end
  end

  # resources :products do
  #     resources :product_items
  # end

  post 'products/search' => 'products#search', as: 'search_products'

  resources :home
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
