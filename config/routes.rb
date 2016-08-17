Rails.application.routes.draw do
  devise_for :users
  root to: 'boards#index'

  resources :users, only: [:show, :edit, :update]
  resources :boards do
    resources :reservations, only: [:new, :create, :update, :destroy]
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
