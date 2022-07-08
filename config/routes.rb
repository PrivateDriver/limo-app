Rails.application.routes.draw do
  root to: "companies#index"

  resources :vehicles
  resources :events
  resources :drivers
  resources :companies

  
  
end
