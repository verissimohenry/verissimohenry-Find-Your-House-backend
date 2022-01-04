Rails.application.routes.draw do
  root 'houses#index'

  resources :sessions, only: [:new, :create, :show, :index]
  resources :registrations, only: [:new, :create, :show, :index]
  resources :users, only: [:new, :create, :show, :index]
  resources :houses, param: :dscription, only: [:index, :create]
  resources :favourites, only: [:create, :destroy]
  
  resources :tokens, only: [:create]

      post '/auth/login', to: 'authentications#create'
      post '/signup', to: 'users#create'

  get '*path', to: 'houses#index', via: :all
end
