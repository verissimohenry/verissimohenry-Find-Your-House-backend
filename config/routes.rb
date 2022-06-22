Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
   post 'auth/signup', to: 'registrations#create'
   match 'auth/signin', to: 'sessions#create', via: :post
   get 'auth/signout', to: 'sessions#destroy'
   match '/sessions/user', to: 'devise/sessions#create', via: :post
  resources :registrations, only: [:new, :create, :destroy]
  resources :houses
  resources :favourites
end
