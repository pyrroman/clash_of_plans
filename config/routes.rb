Rails.application.routes.draw do
  resources :villages, only: [] do
    get 'my_village', on: :collection
  end
end
