Rails.application.routes.draw do
  devise_for :users
  root to: "application#index"
  resources :locals
  post '/events' => 'events#create', defaults: { format: 'js' }
  resources :events
end
