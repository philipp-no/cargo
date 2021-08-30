Rails.application.routes.draw do
  devise_for :users
  root to: 'trips#index'
  resources :trips, only: [:index, :show, :new, :create, :update ] do
    resources :bookings, only: [:new, :create, :index, :destroy]
  end
  resources :dashboard, only: [:index]
  get 'become_driver', to: "drivers#edit", as: :become_driver
  patch 'drivers', to: "drivers#update", as: :update_driver
  patch "/trips/:trip_id/bookings/accept", to: "bookings#accept", as: :accept
  patch "/trips/:trip_id/bookings/decline", to: "bookings#decline", as: :decline
end
