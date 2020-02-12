Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/favorite_song/:song_id', to: 'favorites#create', as: 'song_favorite'
  get '/sessions/new', to: 'sessions#new', as: 'new_session'
  post '/sessions', to: 'sessions#create', as: 'create_session'
  get '/logout', to: 'sessions#destroy', as: 'destroy_session'
  



  resources :favorites
  resources :artists
  resources :genres
  resources :songs 
  resources :users
end
