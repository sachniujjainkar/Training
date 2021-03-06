Rails.application.routes.draw do
  resources :users do
    resources :todos
  end
  root 'todos#index'

  # these routes are for showing users a login form, logging them in, and logging them out.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get 'allusers' => 'users#index'

  get '/about' => 'staticpages#about'
  get '/contact' => 'staticpages#contact'

  get '/support' => 'staticpages#support'
  post '/support' => 'staticpages#support'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
