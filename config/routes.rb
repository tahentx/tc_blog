Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :articles do
  	resources :comments
  end
  root 'welcome#index'
  get '/articles', to: "articles#show"

  get '/auth/google_oauth2/callback', to: "users#create"

  get '/login', to: "sessions#new"
  get '/logout', to: "sessions#destroy"


end

