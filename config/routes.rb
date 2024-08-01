Rails.application.routes.draw do
  devise_for :users, controllers: {
	sessions: 'users/sessions',
	passwords: 'users/passwords'
  }
  root to: "home#index"

  # API endpoints for authentication via devise
  devise_scope :user do
	post "/api/auth", to: "api/auth#create"
	delete "/api/auth", to: "api/auth#destroy"
  end

  resources :vehicles
  resources :events
  resources :drivers
  resources :companies
end