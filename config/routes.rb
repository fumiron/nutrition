Rails.application.routes.draw do
  devise_for :users
  root to: "foods#index"
  resources :users, only: :show
  resources :foods, only: [:index, :new, :create]
end
