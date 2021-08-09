Rails.application.routes.draw do
  root to: "gossips#index"
  
  get 'sign_up', to: "registrations#new"
  post 'sign_up', to: "registrations#create"
  
  delete 'log_out', to: "sessions#destroy"
  
  get 'sign_in', to: "sessions#new"
  post 'sign_in', to: "sessions#create"

  resources :gossips do
    resources :comments
    resources :likes
  end
  resources :users
  resources :cities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
