Rails.application.routes.draw do
  post '/user_registration' => 'user_api#registration'
  devise_for :users
  root to: "application#index"
  resources :locals
  post '/events' => 'events#create', defaults: { format: 'js' }
  resources :events
end
