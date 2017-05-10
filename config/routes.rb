Rails.application.routes.draw do

  get 'sessions/new'

	root 'static_pages#home' #sets home page automagically, skipping the "Yay, Rails" splash page

  get '/help', 			to: 'static_pages#help'

  get '/about',			to: 'static_pages#about'

  get '/contact',		to: 'static_pages#contact'

  get '/jobs',      to: 'jobs#index'

  get '/signup',    to: 'users#new'

  get '/login',     to: 'sessions#new'

  post '/login',    to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  get 'users/new'

  resources :jobs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
