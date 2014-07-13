Rails.application.routes.draw do
  resources :villages, only: [:index]
    resources :buildings, only: [:index]
  end

  resources :buildings do
    put 'upgrade', on: :member
    put 'cancel_upgrade', on: :member
    put 'complete_upgrade', on: :member
  end
end
