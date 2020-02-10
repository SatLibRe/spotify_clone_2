Rails.application.routes.draw do
  resources :artists 
  resources :favorites
  resources :users
  resources :songs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
