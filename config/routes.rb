Rails.application.routes.draw do
  root :to => "users#index"
  resources :users
  resources :games
  post "/signin", to: "users#signin"
  get '/profile', to: "users#user_profile"
  get '/games', to: "games#index"
  resources :teams

  get '/ladder/:division_name', to: 'teams#division'

  get '/games/:division_name/rounds', to: 'games#division_rounds'
  get '/games/:division_name/:round_no', to: 'games#division_games'

  resources :games
end
