Rails.application.routes.draw do

  resources :users

  resources :sessions, only: [:new, :create, :destroy]

  get "login" => "sessions#new"
  get "logout" => "sessions#destroy"

  get "auth/twitter" => "auth#twitter"
  get "/auth/twitter/callback" => "auth#twitter"

  get "auth/facebook" => "auth#facebook"
  get "/auth/facebook/callback" => "auth#facebook"


end