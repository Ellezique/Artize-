Rails.application.routes.draw do
  resources :styles
  resources :artists
  resources :orderitems
  resources :orders
  resources :customers
  resources :profiles
  devise_for :users
  root to: "home#page"
  
  # http://localhost:3000/profiles   MUST BE RESTRICTED TO ADMIN AND USER CREATING IT.
  get "/", to: "profiles#index"

end
