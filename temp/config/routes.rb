Rails.application.routes.draw do
  resources :articles
  resources :users

  #get 'users.index'
  #root 'users#index'
  root 'articals#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
