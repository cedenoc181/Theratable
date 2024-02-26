Rails.application.routes.draw do
  resources :bookings
  resources :sessions
  resources :flexologists
  resources :clients
  resources :users
  resources :accounts
  get '/hello', to: 'application#hello_world'

  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
