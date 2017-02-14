Rails.application.routes.draw do
  
	root 'static_pages#home' #sets home page automagically, skipping the "Yay, Rails" splash page

  get '/help', 			to: 'static_pages#help'

  get '/about',			to: 'static_pages#about'

  get '/contact',		to: 'static_pages#contact'

  get 'users/new'

  resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
