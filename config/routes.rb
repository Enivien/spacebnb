Rails.application.routes.draw do
  devise_for :users
  root to: 'spaceships#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :spaceships do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [] do
    resources :reviews, only: [:new, :create]
  end
end
