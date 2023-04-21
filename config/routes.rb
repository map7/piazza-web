Rails.application.routes.draw do
  root 'feed#show'

  get "sign_up", to: 'users#new'
  post "sign_up", to: 'users#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
