Rails.application.routes.draw do

  devise_for :users
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'items#index'
  resources :items, path: 'chat' do
    resources :comments
  end
  resources :carts, only: [:show, :update, :destroy], path: 'panier'
  resources :users, only: [:show, :update, :edit], path: 'profil'
  resources :charges, only: [:new, :create], path: 'paiement'

  end
end
