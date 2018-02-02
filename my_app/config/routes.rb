=begin
Rails.application.routes.draw do
  #resources :comments
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
=end

QuickBlog::Application.routes.draw do
	resources :posts do
		resources :comments, :only => [:create]
	end

	#root :to => 'welcome#index'


end
