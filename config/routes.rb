Rails.application.routes.draw do
  get 'my_village', to: 'users#my_village'

  root 'users#my_village'
end
