Rails.application.routes.draw do
  devise_for :users
  root to: "drinks#index"
  resources :users, only: [:show, :edit, :update] do
    resources :drinks
  end
end
