Rails.application.routes.draw do

  devise_for :users
  resources :user_logins, only: [:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'landings#index'
  resources :items, path: 'chat' do
    resources :orders
    resources :comments
  end
  resources :carts, only: [:create, :show, :update, :destroy], path: 'panier'
  resources :users, only: [:show, :update, :edit], path: 'profil'
  resources :charges, only: [:new, :create], path: 'paiement'
end
