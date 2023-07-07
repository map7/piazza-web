Rails.application.routes.draw do
  root 'feed#show'

  get "sign_up", to: 'users#new'
  post "sign_up", to: 'users#create'

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
