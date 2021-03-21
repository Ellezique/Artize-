Rails.application.routes.draw do
  resources :styles
  resources :artmedia
  resources :artworks
  resources :artists
  devise_for :users

  # http://localhost:3000
  root to: "home#page"

end
