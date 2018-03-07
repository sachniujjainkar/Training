Rails.application.routes.draw do
  
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'devisehome/index'

  devise_for :users, controllers: { registrations: "registrations" }
  get 'home/index'

  #resources :tags
  resources :categories
  resources :posts do
  	resources :comments
  end

  resources :categries do
      resources :posts
end

root 'home#index'
get 'home/index'

get 'posts/indexs'

get 'tags/:tag', to: 'posts#index', as: :tag

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
