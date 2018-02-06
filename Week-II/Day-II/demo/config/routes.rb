Rails.application.routes.draw do
  resources :todos
  root 'todos#index'
# get 'todos/login'
 get '/login' => 'todos#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
