Rails.application.routes.draw do
  resources :tags
  resources :comments
  resources :posts
  devise_for :users

  root to: "posts#index"
end
