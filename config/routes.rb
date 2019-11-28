Rails.application.routes.draw do
  devise_for :users
  root to: 'pets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :pets, only: [:show, :index, :new] do
    resources :adoptions, only: [:create]
  end

  resources :adoptions, only: [:index]

  resources :owners, only: [:new, :create]
end
