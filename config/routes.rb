Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  get '/posts/new' => 'posts#new'
  post '/posts' => 'posts#create', as: 'posts'
  get '/posts/:id' => 'posts#show', as: 'post'

  get '/users/new' => 'users#new'
  post '/users' => 'users#create', as: 'users'
  get '/users/:id' => 'users#show', as: 'user'

  get '/games/new' => 'games#new'
  post '/games' => 'games#create', as: 'games'
  get '/games/:id' => 'games#show', as: 'game'

  post "/games/1" => 'games#comment', as: 'game_comments'

  # get '/games/:id/game_comments' => 'game_comments#index'
  # get '/game_comments/new' => 'game_comments#new'
  # post '/games/:id/game_comments' => 'game_comments#create', as: 'game_comments'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create', as: 'logins'
  delete '/logout' => 'sessions#destroy'
end
