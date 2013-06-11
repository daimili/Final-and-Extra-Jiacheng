Aya::Application.routes.draw do
  root to: "pages#show"

  resources :foods
  resources :users
  resources :reservations

  get '/menu' => 'foods#menu', as: 'menu'
  get '/location' => 'locations#show', as:'location'
  get '/sessions/new' => 'sessions#new', as: 'new_session'
  post '/sessions' => 'sessions#create', as: 'sessions'
  delete '/sessions' => 'sessions#destroy', as: 'session'
  get '/pages' => 'pages#show', as: 'login'
  get '/help' => 'pages#help', as:'help'


end
