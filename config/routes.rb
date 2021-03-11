Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  root to: "home#page"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
