Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/favorite_song/:song_id', to: 'favorites#create', as: 'song_favorite'

  resources :favorites
  resources :artists
  resources :genres
  resources :songs 
  resources :users
end
