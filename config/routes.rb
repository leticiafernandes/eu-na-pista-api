Rails.application.routes.draw do
  post '/events' => 'events#create', defaults: { format: 'js' }
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
