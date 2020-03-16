Rails.application.routes.draw do
  resources :rounds
  resources :friendships
  resources :users_games
  resources :games
  resources :users
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'

end
