Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  get 'settings', to: 'settings#index'

  resources :days
  resources :employees
  resources :local_sections
  resources :global_sections
  resources :schedules
  resources :users, only: [:show, :edit, :update]
end
