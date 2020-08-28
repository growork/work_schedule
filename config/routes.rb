Rails.application.routes.draw do
  resources :days
  resources :employees
  resources :local_sections
  devise_for :users

  root 'home#index'

  resources :global_sections
  resources :schedules
  resources :users, only: [:show, :edit, :update]
end
