Rails.application.routes.draw do
  root 'home#index'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

   post 'auth/signup', to: 'registrations#create'
   post 'auth/signin', to: 'sessions#create'
   get 'auth/signout', to: 'sessions#destroy'

  resources :registrations, only: [:new, :create, :destroy]
  resources :houses
  resources :favourites
end
