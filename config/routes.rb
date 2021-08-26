Rails.application.routes.draw do
  devise_for :users
  root to: 'trips#index'
  resources :trips, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create, :index]
  end
  resources :dashboard, only: [:index, :show]
  get 'become_driver', to: "drivers#edit", as: :become_driver
  patch 'drivers', to: "drivers#update", as: :update_driver
end
