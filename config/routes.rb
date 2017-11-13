Rails.application.routes.draw do
  post '/user_registration' => 'user_api#registration'
  post '/login' => 'user_api#login'
  get '/find_by_date' => 'events#find_by_date'
  post '/user_event' => 'users_events_xref#create', defaults: { format: 'js' }
  devise_for :users
  root to: "application#index"
  resources :locals
  post '/events' => 'events#create', defaults: { format: 'js' }
  resources :events
end
