Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'users/new'

  root 'static_pages#home' #sets home page automagically, skipping the "Yay, Rails" splash page

  resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
