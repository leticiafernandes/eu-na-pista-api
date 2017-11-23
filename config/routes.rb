Rails.application.routes.draw do
  ## post
  post '/user_registration' => 'user_api#registration'
  post '/login' => 'user_api#login'
  post '/events' => 'events#create', defaults: { format: 'js' }
  post '/check_in' => 'user_api#check_in', defaults: { format: 'js' }
  
  ## get
  get '/find_by_date' => 'events#find_by_date'
  get '/user_event' => 'user_api#find_events_by_user'
  
  ## resources
  resources :locals
  resources :events

  ## devise
  devise_for :users
  
  ## root
  root to: "application#index"
end
