Rails.application.routes.draw do
   resourses :artists
   resources :songs
   resources :genres
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :favorites
  resources :artists
  resources :genres
  resources :songs 
  resources :users
end
