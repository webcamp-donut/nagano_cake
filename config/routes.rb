Rails.application.routes.draw do

  # 顧客側のルーティング
  root to: 'homes#top'
  get '/about' => 'homes#about'
  devise_for :members
  resource :members, only: [:show,  :edit, :update]
  get  '/members/confirmation' => 'members#confirmation'
  post '/members/withdraw' => 'members#withdraw'
  resources :products ,only: [:index, :show]
  resources :cart_items,only: [:index, :create, :destroy, :update]
  delete '/cart_items/' => 'cart_items#reset'
  resources :shipping_addresses ,only: [:index, :new, :create, :edit, :update, :destroy]
  resources :orders,only: [:index, :new, :create, :show,]
  get '/orders/confirmation' => 'orders#confirmation'
  get '/orders/thank' => 'orders#thank'

  # 管理者のルーティング
  devise_for :admins
  namespace :admins do
  resources :orders ,only: [:index, :show, :update]
  resources :order_products ,only:[:update]
  resources :genres ,only:[:index, :edit, :upate, :update]
  resources :members ,only:[:index, :show, :edit, :update]
  resources :genres ,only:[:index, :edit, :upate, :create]
  resources :products ,only:[:index, :edit, :upate, :create, :new, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
