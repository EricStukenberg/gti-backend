Rails.application.routes.draw do
  # get 'auth/create'

  post '/auth', to: 'auth#create'
  get '/current_user', to: 'auth#show'
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
