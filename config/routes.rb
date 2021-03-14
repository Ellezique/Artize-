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



  # http://localhost:3000/profiles   MUST BE RESTRICTED TO ADMIN AND USER CREATING IT.
 # get "/", to: "profiles#index"
  # http://localhost:3000/artworks  MUST BE RESTRICTED TO ADMIN AND USER CREATING IT.
  #get "/", to: "artworks#index"
 # http://localhost:3000/artists 
 # get "/", to: "artist#index"
end
