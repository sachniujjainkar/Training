Rails.application.routes.draw do
  

  # get 'registers/new'
      # get 'registers/create'

 # post 'registers/create'

   root 'parrents#home'
	  get  '/user/registers/new'
    
	 # post 'users' => 'users#create'
      # get 'register:id', to: 'registers#show' , as: 'user'
     # get 'users', to: 'users#index' , as: 'alluser'
    # get 'users/index'
   # get 'registers/view'
   # get '/login' => 'sessions#new'
   # post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
# get '/destroy' => 'users#destroy'
    get 'users:id', to: 'users#destroy' , as: 'destroy'
   
     resources :users do
      resources :registers 
    end

    resources :sessions
    resources :parrents
  # resources :sessions do
  #   member do
  #     get :logout
  #   end
  # end

   # do
  #   member do
  #     get :demo
  #   end
  #   collection do
  #     get :demo1
  #   end
  # end



 # get 'studentregister' => 'registers#new'
 # post 'studentregisters' => 'registers#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


