Rails.application.routes.draw do

  
  root "home#index"
  resources :home, only: [:index]
  resources :potin do
    resources :commentaires
  end
  resources :contact, only: [:index] 
  resources :team, only: [:index]
  resources :user, only: [:show, :new, :create] 
  resources :welcome, only: [:show]
  resources :city, only: [:show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :dashboard, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
