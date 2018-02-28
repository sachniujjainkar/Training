Rails.application.routes.draw do
 
  devise_for :users
  #resources :tags
  resources :posts do
  	resources :comments
  end
  resources :categories
  resources :tags
  root "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
