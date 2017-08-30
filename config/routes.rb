Rails.application.routes.draw do
  post '/events' => 'events#create', defaults: { format: 'js' }
  resources :events
end
