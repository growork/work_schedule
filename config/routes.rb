Rails.application.routes.draw do
  devise_for :users
  root "schedules#index"


  resources :schedules, except: [:destroy]
  resources :users, only: [:show, :edit, :update]
end
