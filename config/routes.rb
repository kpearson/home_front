Rails.application.routes.draw do
  root 'welcome#index'
  get 'home' => 'home#index'

  resources :tiles, only: [:index, :update, :new, :create]

  get "/auth/twitter/callback" => "sessions#create"

  get "/auth/github/callback" => "users#update"
  get 'github_auth' => 'home#github_initial_auth_request'
  get '/auth/github/callback/code' => 'home#github_token_request'
  get '/auth/github/callback/token' => 'home#github_token'

  get "/signout" => "sessions#destroy", :as => :signout
end
