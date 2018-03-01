Rails.application.routes.draw do
  root 'welcome#index'

  get 'welcome/index'

  get 'home/index'

  devise_for :users, controllers: { registrations: "registrations" }
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'comments/create'

  get 'comments/destroy'


  get 'posts/about'
  get 'posts/about'
    

    #root 'home#index'

  resources :categories
  resources :posts do
  	resources :comments
  end

  get 'tags/:tag', to: 'posts#index', as: :tag
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
