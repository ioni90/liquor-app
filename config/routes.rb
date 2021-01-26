Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
 
  root to: "drinks#index"
  get "drinks/ranking"
  get "drinks/ranking_info"
  resources :users, only: [:show, :edit, :update] do
    resources :drinks
  end
end
