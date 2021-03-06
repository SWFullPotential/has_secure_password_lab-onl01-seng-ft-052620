Rails.application.routes.draw do
  root 'application#home'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  
  post '/logout' => 'sessions#destroy'
  
  get '/signup' => 'users#new'
  post '/signup' => 'users#create '
    
  resources :users, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
