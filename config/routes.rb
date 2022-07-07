Rails.application.routes.draw do
  resources :drivers
  root to: "companies#index"

  resources :companies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
