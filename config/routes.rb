Rails.application.routes.draw do

  get '/demoAcceptjob', to: 'static_pages#demoAcceptjob'

  get '/demoUserpage',  to: 'static_pages#demoUserpage'

  get '/demoSearch',    to: 'static_pages#demoSearch'

  get 'demoJoblisting', to: 'static_pages#demoJoblisting'

  get '/demoJob',       to: 'static_pages#demoJob'

  get '/demoLogin',     to:'static_pages#demoLogin'

	root 'static_pages#home' #sets home page automagically, skipping the "Yay, Rails" splash page

  get '/help', 			to: 'static_pages#help'

  get '/about',			to: 'static_pages#about'

  get '/contact',		to: 'static_pages#contact'

  get 'users/new'

  resources :jobs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
