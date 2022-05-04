Rails.application.routes.draw do
  devise_for :users
  root to: "foods#index"
  resources :users, only: :show do
    get :favorites, on: :collection
  end
  resources :foods do
    collection do
      get 'search'
    end
    resource :favorites, only: [:create, :destroy]
  end
end
