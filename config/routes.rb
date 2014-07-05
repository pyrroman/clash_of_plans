Rails.application.routes.draw do
  resources :buildings, only: [:index] do
    put 'upgrade', on: :member
  end
end
