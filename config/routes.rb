Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        passwords: 'users/passwords'
      }
  root to: "home#index" 

  resources :vehicles
  resources :events
  resources :drivers
  resources :companies

  
  
end
