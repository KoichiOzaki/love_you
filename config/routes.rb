Rails.application.routes.draw do
  root to: 'top#index'
  resources :top, only: :index
  resources :letters, only: [:index, :new]
  resources :messages, only: [:show, :new, :create, :edit, :update]
  resources :letter_headers, only: [:show, :new, :create, :edit, :update]

  # sorcery
  resources :user_sessions, only: [:new, :create, :destroy]
  resources :users, only: [:show, :new, :create, :edit, :update]
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  post "oauth/callback" => "oauths#callback"
  get "oauth/callback" => "oauths#callback" # for use with Github, Facebook
  get "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider
end
