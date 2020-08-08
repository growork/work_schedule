Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  resources :schedules
  resources :users, only: [:show, :edit, :update]
end
