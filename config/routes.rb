Rails.application.routes.draw do
  devise_for :users
  root to: 'trips#index'
  resources :trips, only: [:index, :show, :new, :create, :update, :destroy ] do
    resources :bookings, only: [:new, :create, :index, :destroy]
  end
  resources :dashboard, only: [:index]
  resources :chatrooms, only: [:show, :create] do
    resources :messages, only: :create
  end
  get 'become_driver', to: "drivers#edit", as: :become_driver
  patch 'drivers', to: "drivers#update", as: :update_driver
  patch "bookings/:id/accept", to: "bookings#accept", as: :accept
  patch "bookings/:id/decline", to: "bookings#decline", as: :decline
  get "about_us", to: "pages#about", as: :about
end
