Rails.application.routes.draw do
  
  get '/', to: 'sessions#welcome'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'pirates#new'
  post '/signup', to: 'pirates#create'
  delete '/logout', to: 'sessions#destroy'

  # resources :buried_treasures
  # resources :maps
  # resources :pirates
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
