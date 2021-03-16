Rails.application.routes.draw do
  resources :styles
  resources :artmedia
  resources :artworks
  resources :artists
  resources :orders
  resources :customers
  resources :profiles
  devise_for :users

  # http://localhost:3000
  root to: "home#page"

end
