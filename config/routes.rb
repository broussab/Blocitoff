Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'users#show'

  resources :users, only: [:index, :show] do
    resources :items, only: [:new, :create, :destroy]
  end

  get 'home' => 'home#index'
end
