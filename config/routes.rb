Rails.application.routes.draw do
  root 'welcome#index'
  get 'home' => 'home#index'

  resources :tiles, only: [:index, :update, :new, :create]

  get "/auth/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
end
