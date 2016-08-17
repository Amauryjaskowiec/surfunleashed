Rails.application.routes.draw do
  # get 'users/show'

  # get 'users/edit'

  # get 'users/update'

  # get 'reservations/new'

  # get 'reservations/create'

  # get 'reservations/update'

  # get 'reservations/destroy'

  # get 'boards/index'

  # get 'boards/create'

  # get 'boards/new'

  # get 'boards/edit'

  # get 'boards/show'

  # get 'boards/update'

  # get 'boards/destroy'

  devise_for :users
  root to: 'boards#index'

  resources :users, only: [:show, :edit, :update]
  resources :boards do
    resources :reservations, only: [:new, :create, :update, :destroy]
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
