Rails.application.routes.draw do
  resources :artworks
  resources :artists
  resources :styles
  resources :artmedia
  devise_for :users

  # http://localhost:3000
  root to: "home#page"

end
