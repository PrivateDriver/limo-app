Rails.application.routes.draw do
  root to: "home#index" 

  resources :vehicles
  resources :events
  resources :drivers
  resources :companies

  
  
end
