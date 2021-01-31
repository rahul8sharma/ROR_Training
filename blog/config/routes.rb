Rails.application.routes.draw do
  resources :tags
  resources :comments do
    get 'activate'
    get 'archive'
  end
  resources :posts
  devise_for :users

  root to: "posts#index"
end
