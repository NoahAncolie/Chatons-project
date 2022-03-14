Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/destroy'
  get 'orders/create'
  get 'orders/show'
  get 'orders/update'
  get 'orders/new'
  get 'carts/index'
  get 'carts/destroy'
  get 'carts/create'
  get 'carts/new'
  get 'carts/show'
  get 'carts/update'
  get 'items/index'
  get 'items/show'
  get 'items/create'
  get 'items/destroy'
  get 'items/update'
  get 'items/new'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
