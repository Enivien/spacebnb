Rails.application.routes.draw do
  get 'reviews/new'
  devise_for :users
  root to: 'spaceships#index'

  get '/users/:id', to: 'users#show', as: 'user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :spaceships do
    resources :bookings, only: [:new, :create, :edit, :update]
  end

  resources :bookings, only: [] do
    resources :reviews, only: [:new, :create]
  end
end
