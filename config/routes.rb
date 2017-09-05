Rails.application.routes.draw do
  resources :locals
  post '/events' => 'events#create', defaults: { format: 'js' }
  resources :events
end
