FinalProject::Application.routes.draw do




  root to: "pages#login"

  resources :follow_boards
  resources :likes
  resources :follows

  resources :pins do
    resources :comments
  end

  resources :boards
  resources :categories
  resources :users do
  	resources :boards
  	resources :pins
  end



  get '/sessions/new' => 'sessions#new', as: 'new_session'
  post '/sessions' => 'sessions#create', as: 'sessions'
  delete '/sessions' => 'sessions#destroy', as: 'session'
  get 'users/:id/addfriends' => 'users#add_friends', as: 'addfriends'
  get 'users/:id/addpin' => 'users#add_pin', as: 'addpin'
  get 'login' => 'pages#login', as: 'login'
  get 'users/:id/homefeed' => 'users#home_feed', as: 'homefeed'

end
