Rails.application.routes.draw do
  # get 'welcome/index'
  
  resources :articles do
  	resources :comments
  end
  get '/articles', to: "articles#show"

  get '/auth/google_oauth2/callback', to: "users#create"
  get 'sessions/new'
  root'sessions#new'
  get '/logout', to: "sessions#destroy"


end

