Rails.application.routes.draw do
  
  get '/', to: 'sessions#welcome'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'pirates#new'

  resources :maps do
    resources :buried_treasures
  end

  resources :pirates
  
end
