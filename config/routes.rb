Rails.application.routes.draw do
  
  get '/', to: 'sessions#welcome'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'pirates#new'

  resources :buried_treasures
  resources :maps
  resources :pirates
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
