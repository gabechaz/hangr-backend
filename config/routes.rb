Rails.application.routes.draw do

get '/users/:id', to: 'users#show'
post "/login", to: "users#login"
post '/signup', to: 'users#signup'
post "/logout", to: "users#logout"
get '/me', to: 'users#me'
end
