Rails.application.routes.draw do
  resources :buildings, only: [:index]
end
