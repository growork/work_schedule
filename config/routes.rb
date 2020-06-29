Rails.application.routes.draw do
  root "schedules#index"


  resources :schedules, except: [:destroy]
  resources :users, only: [:show, :edit, :update]
end
