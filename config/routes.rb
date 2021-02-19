Rails.application.routes.draw do
  get "/login", to: "sessions#create"
  resources :foods
  resources :meals
  resources :days
  resources :weeks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
