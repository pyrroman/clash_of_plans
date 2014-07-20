Rails.application.routes.draw do
  root to: 'villages#index'

  resources :villages, only: [:index] do
    resources :buildings, only: [:index]
  end

  resources :buildings do
    put 'upgrade', on: :member
    put 'cancel_upgrade', on: :member
    put 'complete_upgrade', on: :member
  end

  resources :users, only: [:new, :create]
  get '/signup', to: 'users#new'

  resources :sessions, only: [:new, :create, :destroy]
  get '/signin', to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy'
end
