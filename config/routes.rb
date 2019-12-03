Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"

  resources :users, only: [:show, :edit, :update]
  resources :posts do
    resources :likes, only:[:create, :destroy]
  end
  resources :categories do
    resources :posts
  end
end
