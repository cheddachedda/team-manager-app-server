Rails.application.routes.draw do
  root :to => "users#index"
  resources :users
  post "/signin", to: "users#signin"

end
