Rails.application.routes.draw do

get '/users/:id', to: 'users#show'

post "/login", to: "users#login"

post "/logout", to: "users#logout"

end
