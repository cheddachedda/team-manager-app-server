Rails.application.routes.draw do
  root :to => "users#index"
  resources :users
  resources :games
  post "/signin", to: "users#signin"
  get '/profile', to: "users#user_profile"
  get '/games', to: "games#index"
  resources :teams


  resources :games
end
