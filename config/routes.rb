Rails.application.routes.draw do



post "/login", to: "users#login"
post '/signup', to: 'users#signup'
post "/logout", to: "users#logout"
get '/me', to: 'users#me'
get '/users', to: 'users#index'
get '/users/:id', to: 'users#show'
get '/users/hangs/:id', to: 'users#hangs'

get '/activities', to: 'activities#index'
get '/activities/:id', to: 'activities#show'

get '/hangs', to: 'hangs#index'
get '/hangs/:id', to: 'hangs#show'
post '/hangs', to: 'hangs#create'
patch '/hangs/:id/rsvp', to: 'hangs#rsvp'

post '/signups', to: 'signups#create'


get '/reviews', to: 'reviews#index'
post '/make-review', to: 'reviews#create'
get '/reviews/:id', to: 'reviews#show'
end
