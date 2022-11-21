Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: "pages#home"

  resources :vehicles
  resources :events
  resources :drivers
  resources :companies

end
