Rails.application.routes.draw do
  resources :memberships
  resources :groups
  resources :lifestages
  delete "/user_lifestages/delete/:id", to:"user_lifestages#remove", as: "remove"
  resources :user_lifestages, only: [:index, :show, :create]
  resources :comments
  resources :users
  post "/login", to:"auth#login"
  get "/auto_login", to:"auth#auto_login"

end
