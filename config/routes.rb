Rails.application.routes.draw do
  resources :groups
  resources :lifestages
  resources :user_lifestages
  resources :comments
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
