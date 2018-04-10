Rails.application.routes.draw do

  devise_for :users
  root 'home#index'

  resources :products

  resources :users, only: [:create]

  namespace :admin do
    root to: 'products#index'
    resources :products
  end
end
