Rails.application.routes.draw do
  get '/user/:id', to: 'user#index'
  get '/potin/:id', to: 'potin#index'
  get '/home', to: 'home#index'
  post '/home', to: 'potin#index'
  get '/', to: 'home#index'
  get '/welcome/:id', to: 'welcome#index'
  get '/contact', to: 'contact#index'
  get '/team', to: 'team#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
