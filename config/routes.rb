Rails.application.routes.draw do
  # get 'auth/create'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  resources :users


  resources :rounds
  resources :friendships
  resources :users_games
  resources :games
  # post '/login', to: 'auth#create'
  # get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'

end
