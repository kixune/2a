Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  resources :bijous
  resources :rockhounds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'rockhounds#index'


end
