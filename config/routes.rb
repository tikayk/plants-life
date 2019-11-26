Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :posts
    resources :like, only:[:create, :destroy]
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
