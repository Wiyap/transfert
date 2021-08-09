Rails.application.routes.draw do
  root to: 'gossips#index'
  get '/team', to: 'team#index' 
  get '/contact', to: 'contact#index'
  get '/welcome', to: 'welcome#index'
  get '/welcome/:first_name', to: 'welcome#landing_page'
  resources :gossips
  resources :authors
end
