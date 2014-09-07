Rails.application.routes.draw do
  root to:'bags#index'
  resources :bags, only: [:index]
end
