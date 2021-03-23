Rails.application.routes.draw do
  get "orders/new/:artwork_id", to: "orders#new", as: "new_order"
  get "orders/success", to: "orders#success", as: "order_success"
  get "orders/cancel", to: "orders#cancel", as: "order_cancel"
  resources :styles
  resources :artmedia
  resources :artworks
  resources :artists
  devise_for :users

  root to: "home#page"

end
