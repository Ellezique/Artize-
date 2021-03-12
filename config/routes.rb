Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  root to: "home#page"
  
  # http://localhost:3000/profiles
  get "/", to: "profiles#index"

end
