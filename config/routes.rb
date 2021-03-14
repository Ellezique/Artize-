Rails.application.routes.draw do
  resources :artworks
  resources :artmedia
  resources :styles
  resources :artists
  resources :orderitems
  resources :orders
  resources :customers
  resources :profiles
  devise_for :users

  # http://localhost:3000
  root to: "home#page"

end
