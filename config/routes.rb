Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :new, :create]
  get '/search', to: "powers#search"
  resources :heroines, only: [:index, :new, :create, :show]
end
