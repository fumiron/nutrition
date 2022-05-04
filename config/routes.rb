Rails.application.routes.draw do
  devise_for :users
  root to: "foods#index"
  resources :users, only: :show
  resources :foods do
    collection do
      get 'search'
    end
  end
end
