Rails.application.routes.draw do
  root :to => "users#index"
  resources :users
  post "/signin", to: "users#signin"
  get '/profile', to: "users#user_profile"
  resources :teams


  resources :games
end
