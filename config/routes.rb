Rails.application.routes.draw do
  devise_for :users
  root to: "drinks#index"
  get "drinks/ranking"
  get "drinks/ranking_info"
  resources :users, only: [:show, :edit, :update] do
    resources :drinks
  end
end
