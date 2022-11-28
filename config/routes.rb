Rails.application.routes.draw do
  devise_for :users
  root to: "home#index" 

  resources :vehicles
  resources :events
  resources :drivers
  resources :companies

  
  
end
