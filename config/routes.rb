Rails.application.routes.draw do
  resources :villages, only: [:index] do
    resources :buildings, only: [:index] do
      put 'upgrade', on: :member
      put 'cancel_upgrade', on: :member
      put 'complete_upgrade', on: :member
    end
  end
end
