Rails.application.routes.draw do
  resources :memberships
  resources :groups
  resources :lifestages
  resources :user_lifestages
  resources :comments
  resources :users
  post "/login", to:"auth#login"
  get "/auto_login", to:"auth#auto_login"

end
