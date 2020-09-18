Rails.application.routes.draw do

  # 顧客側のルーティング

  devise_for :members, controllers: {
    sessions:      'members/sessions',
    passwords:     'members/passwords',
    registrations: 'members/registrations'
  }
  resource :members, only: [:show]
  get '/member/edit' => 'members#edit'
  patch '/member/' => 'members#update'
  get  '/members/confirmation' => 'members#confirmation'
  patch '/members/withdraw' => 'members#withdraw'
  resources :products ,only: [:index, :show]
  resources :cart_items,only: [:index, :create, :destroy, :update]
  delete '/cart_items/' => 'cart_items#reset'
  resources :shipping_addresses ,only: [:index, :new, :create, :edit, :update, :destroy]
  resources :orders,only: [:index, :new, :create, :show,]
  post '/orders/confirmation' => 'orders#confirmation'
  get '/orders/thank' => 'orders#thank'

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  get '/admin' => 'admins#top'

  namespace :admins do
  resources :orders ,only: [:index, :show, :update]
  resources :order_products ,only:[:update]
  resources :genres ,only:[:index, :edit, :create, :update]
  resources :members ,only:[:index, :show, :edit, :update]
  resources :genres ,only:[:index, :edit, :update, :create]
  resources :products ,only:[:index, :edit, :update, :create, :new, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: 'homes#top'
  get '/about' => 'homes#about'

end
