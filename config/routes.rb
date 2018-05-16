Rails.application.routes.draw do
  get 'users/show'
  get 'users/new'
  get 'spaceships/index'
  get 'spaceships/show'
  get 'spaceships/new'
  devise_for :users
  root to: 'spaceships#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
