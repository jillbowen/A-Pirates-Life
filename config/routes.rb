Rails.application.routes.draw do
  
  get '/', to: 'sessions#welcome'
  
  resources :buried_treasures
  resources :maps
  resources :pirates
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
