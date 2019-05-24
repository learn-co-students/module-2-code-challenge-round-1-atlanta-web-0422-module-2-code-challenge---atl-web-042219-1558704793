Rails.application.routes.draw do

  resources :powers, except: [:edit, :update]
  resources :heroines

  root 'application#index', as: 'home'
end
