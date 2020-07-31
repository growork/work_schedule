Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  resources :schedules, except: [:destroy]
  resources :users, only: [:show, :edit, :update]
end
