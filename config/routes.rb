Rails.application.routes.draw do

  devise_for :users, skip: :registrations
  root 'home#index'

  resources :products, only: [:index, :show]

  resources :users, only: [:new, :create]

  namespace :admin do
    root to: 'products#index'
    resources :products
    resources :categories, only: [:index, :new, :create, :edit, :update]
  end
end
