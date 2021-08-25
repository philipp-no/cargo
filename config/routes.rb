Rails.application.routes.draw do
  devise_for :users
  root to: 'trips#index'
  resources :trips, only: [:index, :show] do
    resources :bookings, only: [:new, :create, :index]
  end
  resources :dashboard, only: [:index, :show]
end
