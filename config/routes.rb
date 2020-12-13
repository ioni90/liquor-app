Rails.application.routes.draw do
  devise_for :users
  root to: "drinks#index"
  resources :drinks
  resources :users, only: [:show, :edit, :update]
end
