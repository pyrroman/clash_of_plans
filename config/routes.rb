Rails.application.routes.draw do
  root to: 'villages#my_village'

  resources :villages, only: [:index] do
    get 'my_village', on: :member
    
    resources :buildings, only: [:index]
  end
  get '/my_village', to: 'villages#my_village'

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
