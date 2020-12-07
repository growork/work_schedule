Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  get 'settings', to: 'settings#index'

  resources :schedules
  resources :days
  resources :employees
  resources :global_sections
  resources :users, only: [:show, :edit, :update]
end
