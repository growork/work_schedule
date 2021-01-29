Rails.application.routes.draw do
  resources :subsections
  devise_for :users

  root 'home#index'

  get 'settings', to: 'settings#index'

  resources :schedules
  resources :employees
  resources :global_sections
  resources :users, only: [:show, :edit, :update]
end
