Rails.application.routes.draw do
  resources :buildings, only: [:index] do
    get 'upgrade', on: :member
  end
end
