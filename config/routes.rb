Rails.application.routes.draw do
  
  get '/', to: 'application#welcome'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'pirates#new'

  resources :buried_treasures

  resources :pirates do
    resources :maps
  end

  get '/auth/:provider/callback', to: 'sessions#create'

end
