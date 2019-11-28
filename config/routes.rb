Rails.application.routes.draw do
  devise_for :users
  root to: 'pets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :pets do
    resources :adoption, only: [:create]
  end

  resources :owners, only: [:new, :create]
end
