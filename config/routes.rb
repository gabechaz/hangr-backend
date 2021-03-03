Rails.application.routes.draw do


  resources :maybes
  resources :signups

post "/login", to: "users#login"
post '/signup', to: 'users#signup'
post "/logout", to: "users#logout"
get '/me', to: 'users#me'
get '/users/:id', to: 'users#show'
get '/users/hangs/:id', to: 'users#hangs'

get '/activities', to: 'activities#index'
get '/activities/:id', to: 'activities#show'

get '/hangs', to: 'hangs#index'
get '/hangs/:id', to: 'hangs#show'
post '/hangs', to: 'hangs#create'

post '/signups', to: 'signups#create'
end
