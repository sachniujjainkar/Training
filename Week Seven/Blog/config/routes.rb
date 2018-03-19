Rails.application.routes.draw do
  
  resources :tags
  devise_for :users
   resources :categries
   resources :comments
   # devise_for :users, :controllers => { sessions: 'sessions/sessions' }

     # devise_for :users 
# get "logout" => 'devise/session#destroy'

# get "log_out" => "devise/session#destroy", :as => "log_out"


  root 'home#index'

  

  resources :posts do
  	resources :comments
  end	

resources :categries do
      resources :posts
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
