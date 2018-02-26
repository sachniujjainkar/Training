Rails.application.routes.draw do
  get 'users/new'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  resources :articles

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sessions,only: [:create]
  resources :users, only: [:new,:create]

end
