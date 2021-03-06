Rails.application.routes.draw do

  get 'sessions/new'

	root 'static_pages#home' #sets home page automagically, skipping the "Yay, Rails" splash page

  get '/help', 			to: 'static_pages#help'

  get '/about',			to: 'static_pages#about'

  get '/contact',		to: 'static_pages#contact'

  get '/search',    to: 'jobs#search'

 get '/jobs',      to: 'jobs#index'

  get '/signup',    to: 'users#new'

  post '/signup',   to: 'users#create'

  get '/login',     to: 'sessions#new'

  post '/login',    to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  mount Commontator::Engine => '/commontator'

  get 'users/new'

  resources :jobs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
