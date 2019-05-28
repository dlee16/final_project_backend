Rails.application.routes.draw do
  resources :memberships, only: [:index, :show, :create, :destroy]
  resources :groups, only: [:index, :show, :create, :update]
  resources :lifestages, only: [:index, :show]
  resources :user_lifestages, only: [:index, :show, :create, :destroy]
  resources :comments, only:[:index, :show, :create, :update, :destroy]
  resources :users, only:[:index, :show, :create, :update]
  post "/login", to:"auth#login"
  get "/auto_login", to:"auth#auto_login"

  mount ActionCable.server => '/socket'
end
