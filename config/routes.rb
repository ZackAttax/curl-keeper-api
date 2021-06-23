Rails.application.routes.draw do
  resources :days
  resources :users
  get 'profile', to: 'users#show'
  resources :sessions, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
