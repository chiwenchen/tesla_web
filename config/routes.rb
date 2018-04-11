Rails.application.routes.draw do

  devise_for :users, skip: :registrations
  root 'home#index'

  resources :products

  resources :users, only: [:new, :create]

  namespace :admin do
    root to: 'products#index'
    resources :products
  end
end
