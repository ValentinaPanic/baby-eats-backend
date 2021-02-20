Rails.application.routes.draw do
  post "/login", to: "sessions#create"
  get "/get_current_user", to: "sessions#get_current_user"

  resources :foods
  resources :meals
  resources :days
  resources :weeks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
