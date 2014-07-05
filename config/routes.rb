Rails.application.routes.draw do
  resources :buildings, only: [:index] do
    put 'upgrade', on: :member
    put 'cancel', on: :member
    put 'complete', on: :member
  end
end
