Rails.application.routes.draw do

  get 'contact/index'
  devise_for :users
  resources :user_logins, only: [:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'landings#index'
  resources :items, path: 'chat' do
    resources :orders
    resources :comments
  end
  resources :carts, only: [:index, :create, :show, :update, :destroy], path: 'panier'
  resources :users, only: [:show, :update, :edit], path: 'profil'
  resources :charges, only: [:new, :create]
  resources :contact, only: [:index], path: 'contact'

  namespace :admin do
    root to: 'admin/items#index'
    resources :dashboard, only: [:index]
    resources :users, path: 'profil'
    resources :orders, path: 'paiement'
    resources :items, path: 'chat' do
    resources :comments
    end
  end





end
