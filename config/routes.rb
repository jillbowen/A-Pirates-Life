Rails.application.routes.draw do
  
  get '/', to: 'application#welcome'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'pirates#new'

  resources :buried_treasures do 
    resources :maps
  end

  resources :maps, only: [:edit, :update]

  resources :pirates

  get '/auth/:provider/callback', to: 'sessions#create'

end
