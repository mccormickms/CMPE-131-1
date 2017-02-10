Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  get 'users/new'

  resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
