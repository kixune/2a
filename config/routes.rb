Rails.application.routes.draw do
  resources :rockhounds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#test'


end
