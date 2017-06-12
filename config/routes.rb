Rails.application.routes.draw do
  get 'welcome/index'
  resources :articles do
  	resources :comments
  end
  root 'welcome#index'
  get '/articles', to: "articles#show"

  get '/login', to: "sessions#new", as: "login"
  
  # get '/auth/twitter/callback', to: "users#create"
  # get '/logout', to: "sessions#destroy", as: "logout"
  # get '/auth/failure', to: "sessions#failure"
end

