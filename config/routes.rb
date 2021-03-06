Rails.application.routes.draw do
mount Attachinary::Engine => "/attachinary"

  root to: 'boards#index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :boards do
    resources :reservations, only: [:new, :create, :show, :update, :destroy]
  end

  get "/dashboard", to: "pages#dashboard", as: :dashboard
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
